class Announcements::IndexPage < BasePage
  assign announcements : Announcement::BaseQuery

  render do
    h1 "Announcements"

    link "New Announcement", to: Announcements::New

    ul do
      @announcements.each do |announcement|
        li do
          link announcement.title, to: Announcements::Show.route(announcement)
          link "Delete", to: Announcements::Delete.route(announcement)
        end
      end
    end
  end
end
