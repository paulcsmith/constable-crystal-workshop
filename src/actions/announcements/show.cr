class Announcements::Show < BaseAction
  action do
    render announcement: AnnouncementQuery.new.find(id)
  end
end
