class Announcements::ShowPage < BasePage
  assign announcement : Announcement

  render do
    raw "&laquo"
    link "Back to announcements", to: Announcements::Index
    h1 @announcement.title
  end
end
