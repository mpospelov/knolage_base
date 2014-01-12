Template.sections_list.events =
  "submit #create_section": (e)->
    e.preventDefault()
    Section.insert 
      name: $("#section_name").val()
      questions_count: 0

Template.sections_list.sections = ->
  Section.find()

Template.popular_sections.sections = ->
  Section.find({},{limit: 5, sort: {questions_count: -1}})
