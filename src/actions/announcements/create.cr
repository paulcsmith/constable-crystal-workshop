class Announcements::Create < BaseAction
  action do
    AnnouncementForm.save params do |form, announcement|
      if announcement
        redirect to: Announcements::Index
      else
        render NewPage, announcement_form: form
      end
    end
  end
end
