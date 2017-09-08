class Announcements::IndexPage < BasePage
  assign announcements : AnnouncementQuery

  render do
    h1 "Announcements"

    ul do
      @announcements.each do |announcement|
        li announcement.title
      end
    end
  end
end
