Template.top_users.users = ->
  Meteor.users.find({},{limit: 5,sort: {rate: -1}})
