class ImportData < ActiveRecord::Migration[5.0]
  def change
	rake::Task['db:data:load'].invoke
  end
end
