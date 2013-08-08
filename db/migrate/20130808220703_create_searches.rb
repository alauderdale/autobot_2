class CreateSearches < ActiveRecord::Migration
    def self.up
    ActiveRecord::Base.connection.execute <<-SQL
    CREATE VIEW searches AS
      SELECT  users.id AS searchable_id, users.name AS term, 
              CAST ('User' AS varchar) AS searchable_type 
      FROM users 
      UNION 
      SELECT  cars.id AS searchable_id, cars.make AS term, 
              CAST ('Car' AS varchar) AS searchable_type 
      FROM cars
    SQL
  end
 
  def self.down
    ActiveRecord::Base.connection.execute <<-SQL
      DROP VIEW searches
    SQL
  end
end
