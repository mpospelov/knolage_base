Template.sections_list.events =
  "submit #create_section": (e)->
    e.preventDefault()
    Section.insert name: $("#section_name").val()

Template.sections_list.sections = ->
  Section.find()
