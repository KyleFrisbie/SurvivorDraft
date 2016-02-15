class CreateSurvivors < ActiveRecord::Migration
  def change
    create_table :survivors do |t|
      t.string :name
      t.integer :tribe_id
      t.integer :elimination_number
      t.string :photo_url

      t.timestamps
    end
  end
end
