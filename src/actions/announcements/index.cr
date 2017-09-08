class Announcements::Index < BaseAction
  action do
    render announcements: AnnouncementQuery.new.newest_first
  end
end
