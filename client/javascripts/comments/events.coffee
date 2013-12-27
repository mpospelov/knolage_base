Template.comments.events = 
  "submit #create_comment": (e)->
    e.preventDefault()
    question = Question.findOne _id: Session.get("question_id")
    Comment.insert
      question_id: question._id
      content: $("#comment_content").val()
      user_id: Meteor.userId()
    Question.update question._id, $inc:
                                    comments_count: 1
Template.comments.username = (user_id)->
  user = Meteor.users.findOne _id: user_id
  user.emails[0].address if user
