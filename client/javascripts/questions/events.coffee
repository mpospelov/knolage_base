Template.questions_list.events = 
  "submit #create_question": (e)->
    e.preventDefault()
    Question.insert 
      section_name: Session.get("section_name")
      value: $("#question_value").val()
      
Template.questions_list.questions = ->
  Question.find section_name: Session.get("section_name")
