class Announcements::Show < BaseAction
  action do
    render announcement: AnnouncementQuery.new.find(id),
      comment_form: CommentForm.new
  end
end
