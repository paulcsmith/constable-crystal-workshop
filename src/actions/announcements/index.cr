class Announcements::Index < BaseAction
  action do
    render announcements: AnnouncementQuery.new
  end
end
