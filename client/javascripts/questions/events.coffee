Template.questions_list.events = 
  "submit #create_question": (e)->
    e.preventDefault()
    section = Section.findOne Session.get("section_id")
    Section.update {_id: section._id}, {$inc: {questions_count: 1}}
    Question.insert 
      section_id: Session.get("section_id")
      value: $("#question_value").val()
      user_id: Meteor.userId()      
      comments_count: 0
      date_created: Date.now()
    $("#create_question")[0].reset()

      
Template.questions_list.questions = ->
  Question.find section_id: Session.get("section_id")

Template.question.question = ->
  Question.findOne _id: Session.get("question_id")

Template.comments.comments = ->
  Comment.find question_id: Session.get("question_id")

