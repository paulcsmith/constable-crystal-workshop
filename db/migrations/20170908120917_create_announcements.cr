class CreateAnnouncements::V20170908120917 < LuckyMigrator::Migration::V1
  def migrate
    create :announcements do
      add title : String
    end
  end

  def rollback
    drop :things
  end
end
