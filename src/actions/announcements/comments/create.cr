class Announcements::Comments::Create < BaseAction
  nested_action do
    CommentForm.save params do |form, comment|
      if comment
        redirect to: Announcements::Show.route(announcement)
      else
        render Announcements::ShowPage, announcement: announcement, comment_form: form
      end
    end
  end

  private def announcement
    AnnouncementQuery.new.find(announcement_id)
  end
end
