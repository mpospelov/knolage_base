Template.questions_list.events = 
  "submit #create_question": (e)->
    e.preventDefault()
    Question.insert 
      section_name: Session.get("section_name")
      value: $("#question_value").val()
      user_id: Meteor.userId()      
      comments_count: 0
      
Template.questions_list.questions = ->
  Question.find section_name: Session.get("section_name")

Template.question.question = ->
  Question.findOne _id: Session.get("question_id")

Template.comments.comments = ->
  Comment.find question_id: Session.get("question_id")

