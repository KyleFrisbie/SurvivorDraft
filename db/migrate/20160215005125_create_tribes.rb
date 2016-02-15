class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :name
      t.integer :survivor_id

      t.timestamps
    end
  end
end
