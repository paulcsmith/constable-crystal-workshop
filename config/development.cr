LuckyRecord::Repo.configure do
  settings.url = LuckyRecord::PostgresURL.build(
    hostname: "localhost",
    database: "constable_crystal_development"
  )
end

LuckyMigrator::Runner.db_name = "constable_crystal_development"
