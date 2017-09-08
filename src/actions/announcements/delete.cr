class Announcements::Delete < BaseAction
  action do
    AnnouncementQuery.new.find(id).delete
    redirect to: Announcements::Index
  end
end
