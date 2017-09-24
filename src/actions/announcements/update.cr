class Announcements::Update < BaseAction
  action do
    redirect to: Announcements::Index
  end
end
