class Announcements::ShowPage < BasePage
  needs announcement : Announcement
  needs comment_form : CommentForm

  render do
    raw "&laquo"
    link "Back to announcements", to: Announcements::Index
    h1 @announcement.title
    render_comments
    render_comment_form(@comment_form)
  end

  private def render_comments
    h3 "Comments"

    ul do
      @announcement.comments.each do |comment|
        li comment.body
      end
    end
  end

  private def render_comment_form(f)
    h3 "Add a new comment"

    form_for Announcements::Comments::Create.route(@announcement) do
      label_for f.author
      text_input f.author
      errors_for f.author

      label_for f.body
      textarea f.body
      errors_for f.body

      submit "Save comment"
    end
  end
end
