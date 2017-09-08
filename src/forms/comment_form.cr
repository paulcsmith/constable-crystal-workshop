class CommentForm < Comment::BaseForm
  allow author, body

  def call
    announcement_id.value = params.get!(:announcement_id).to_i
  end
end
