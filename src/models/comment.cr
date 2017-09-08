class Comment < BaseModel
  table :comments do
    field author : String?
    field body : String
    field announcement_id : Int32
  end
end
