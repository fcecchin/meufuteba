class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps
      t.belongs_to :league
      t.belongs_to :user
      t.string :name, :limit => 50
      t.string :logo_url, :limit => 255
      t.string :ballpark, :limit => 100
      t.integer :founded
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :ties, default: 0
    end
  end
end