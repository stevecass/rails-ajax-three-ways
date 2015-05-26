  json.username @comment.user.username
  json.content @comment.content
  json.created_at @comment.created_at.to_formatted_s(:short)
