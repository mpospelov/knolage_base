@Section = new Meteor.Collection("section")
@Question = new Meteor.Collection("question")
@Comment = new Meteor.Collection("comment")
@CommentLike = new Meteor.Collection("comment_like")

Accounts.onCreateUser (options, user) ->
  user.username = user.emails[0].address
  user

