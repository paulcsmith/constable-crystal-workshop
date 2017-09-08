class CreateComments::V20170908171717 < LuckyMigrator::Migration::V1
  def migrate
    create :comments do
     add :author, String, optional: true
     add :body, String
     add :announcement_id, Int32
    end
  end

  def rollback
    drop :things
  end
end
