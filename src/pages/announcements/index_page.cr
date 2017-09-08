class Announcements::IndexPage < BasePage
  assign announcements : AnnouncementQuery

  render do
    h1 "Announcements"

    link "New Announcement", to: Announcements::New

    ul do
      @announcements.each do |announcement|
        li announcement.title
      end
    end
  end
end
