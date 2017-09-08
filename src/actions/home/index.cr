class Home::Index < BaseAction
  get "/" do
    redirect to: Announcements::Index
  end
end
