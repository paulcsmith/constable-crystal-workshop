class Announcements::NewPage < BasePage
  needs announcement_form : AnnouncementForm

  render do
    h1 "Create a new announcement"
    render_announcement_form(@announcement_form)
  end

  private def render_announcement_form(f)
    form_for Announcements::Create do
      label_for f.title
      text_input f.title, autofocus: "true"
      errors_for f.title

      submit "Post announcement"
    end
  end
end
