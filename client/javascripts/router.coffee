Router = Backbone.Router.extend(
  routes:
    "sections": "sections"
    help: "help" # http://your_domain/help
    "profile": "profile"

  sections: ->
    Session.set('currentPage', 'profile')
    
  profile: ->
    Session.set('currentPage', 'profile')

  main: ->

  
  # Your homepage code
  # for example: Session.set('currentPage', 'homePage');
  help: ->
)

# Help page
app = new Router
Meteor.startup ->
  Backbone.history.start pushState: true
  
