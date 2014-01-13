Meteor.users.allow
  update: (userId, doc)->
    true
Meteor.users.deny
  update: (userId, docs, fields, modifier)->
    "rate" in Object.keys(fields)
