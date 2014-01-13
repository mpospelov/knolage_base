Comment.rateUp = (id)->
  like = CommentLike.findOne comment_id: id, user_id: Meteor.userId  
  unless like
    comment = Comment.findOne id
    Comment.update id, {$inc: {rate: 1}}
    Meteor.users.update comment.user_id, {$inc: {rate: 1}}
    CommentLike.insert comment_id: id, user_id: Meteor.userId()

Comment.rateDown = (id)->
  like = CommentLike.findOne comment_id: id, user_id: Meteor.userId()
  if like
    comment = Comment.findOne id    
    Comment.update id, {$inc: {rate: -1}}  
    Meteor.users.update comment.user_id, {$inc: {rate: -1}}
    CommentLike.remove like._id
