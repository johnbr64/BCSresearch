class ImportData < ActiveRecord::Migration[5.0]
  def change
	Rake::Task['db:data:load'].invoke
  end
end
