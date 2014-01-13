Template.comments.events = 
  "submit #create_comment": (e)->
    e.preventDefault()
    question = Question.findOne _id: Session.get("question_id")
    Comment.insert
      question_id: question._id
      content: $("#comment_content").val()
      user_id: Meteor.userId()
    Question.update question._id, $inc:{comments_count: 1}
    $("#create_comment")[0].reset()
  "click .remove_coment": (e)->
    answer = confirm("Вы уверены что хотите удалить комментарий?")
    if answer
      Comment.remove $(e.toElement).data("id")


Template.comments.username = (user_id)->
  user = Meteor.users.findOne _id: user_id
  user.emails[0].address if user
