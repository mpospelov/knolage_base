Router = Backbone.Router.extend
  routes:
    "": "root"
    "sections": "sections_list"
    "sections/:name": "section"
    "questions/:id": "questions"


  questions: (id)->
    Session.set("question_id", id)
    Session.set('currentPage', 'question')

  root: ->
    Session.set('currentPage', 'root')

  section: (name)->
    Session.set('section_name', name)
    Session.set('currentPage', 'section')

  sections_list: ->
    Session.set('currentPage', 'sections_list')

# Help page
@SectionRouter = new Router
Session.setDefault('currentPage', 'root')
Meteor.startup ->
  Backbone.history.start pushState: true
  
