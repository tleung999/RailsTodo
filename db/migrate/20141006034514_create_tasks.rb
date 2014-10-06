class CreateTasks < ActiveRecord::Migration
  def change
  	create_table :tasks do |t|
  	 t.string :name, :description
  	 t.timestamps
  	end
  end
end
