class CreateLegacyAuthors < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      CREATE TABLE IF NOT EXISTS `Authors` (
        `Author_ID` int NOT NULL PRIMARY KEY,
        `L_Name` varchar(255),
        `F_Name` varchar(255),
        `M_Initial` varchar(10),
        `Full_Name` varchar(255)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    SQL
  end

  def down
    execute "DROP TABLE IF EXISTS `Authors`"
  end
end
