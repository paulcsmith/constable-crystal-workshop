class Announcements::New < BaseAction
  action do
    render announcement_form: AnnouncementForm.new
  end
end
