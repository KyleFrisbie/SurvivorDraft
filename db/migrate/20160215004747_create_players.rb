class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :points
      t.integer :place

      t.timestamps
    end
  end
end
