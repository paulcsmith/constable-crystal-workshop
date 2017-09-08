class Announcements::IndexPage < BasePage
  assign announcements : Announcement::BaseQuery

  render do
    h1 "Announcements"

    link "New Announcement", to: Announcements::New

    ul do
      @announcements.each do |announcement|
        li do
          text announcement.title
          link "Delete", to: Announcements::Delete.route(announcement)
        end
      end
    end
  end
end
