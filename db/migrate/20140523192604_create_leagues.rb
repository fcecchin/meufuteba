class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.timestamps
      t.string :name, :limit => 50, :null => false
    end
  end
end