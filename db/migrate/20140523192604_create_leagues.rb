class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.timestamps
      t.belongs_to :user
      t.string :name, :limit => 50, :null => false
    end
  end
end