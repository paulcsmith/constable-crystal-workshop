class Announcements::NewPage < BasePage
  assign announcement_form : AnnouncementForm

  render do
    h1 "Create a new announcement"
    render_form_errors(@announcement_form) if @announcement_form.save_failed?
    render_announcement_form(@announcement_form)
  end

  private def render_form_errors(f)
    p f.errors.join(", ")
  end

  private def render_announcement_form(f)
    form_for Announcements::Create do
      label_for f.title
      text_input f.title, autofocus: "true"

      input type: "submit", value: "Post announcement"
    end
  end
end
