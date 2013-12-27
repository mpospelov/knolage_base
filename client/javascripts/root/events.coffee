Template.root_questions.questions = ->
  Question.find()
Template.root_questions.username = (user_id)->
  user = Meteor.users.findOne _id: user_id
  user.emails[0].address if user
