class Announcement < BaseModel
  table :announcements do
    field title : String
  end

  def comments
    CommentQuery.new.announcement_id(id)
  end
end
