class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.datetime :deleted_at
      t.integer :team_id
      t.integer :user_id
      t.string :name, :limit => 100, :null => false
      t.string :email, :limit => 100
      t.string :position, :limit => 50
      t.integer :number, :null => false
      t.boolean :retired, :default => false
      t.boolean :injured, :default => false
      t.date :born_on
      t.text :notes
      t.timestamps
    end
  end
end
