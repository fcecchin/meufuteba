class CreateTeamsMigration < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps
      t.integer :league_id
      t.belongs_to :user
      t.string :name, :limit => 50
      t.string :logo_url, :limit => 255
      t.string :ballpark, :limit => 100
      t.integer :founded
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :ties, default: 0
      t.float :win_percentage
    end
  end
end