class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :number
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
