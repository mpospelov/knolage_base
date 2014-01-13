Comment.rateUp = (id)->
  like = CommentLike.findOne comment_id: id, user_id: Meteor.userId  
  unless like
    Comment.update id, {$inc: {rate: 1}}
    CommentLike.insert comment_id: id, user_id: Meteor.userId()

Comment.rateDown = (id)->
  like = CommentLike.findOne comment_id: id, user_id: Meteor.userId()
  if like
    Comment.update id, {$inc: {rate: -1}}  
    CommentLike.remove like._id, val: -1
