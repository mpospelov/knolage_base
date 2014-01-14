Template.root_questions.questions = ->
  Question.find {}, {limit: 5, sort: {date_created: -1}}

Template.root_questions.username = (user_id)->
  user = Meteor.users.findOne user_id
  user.username

