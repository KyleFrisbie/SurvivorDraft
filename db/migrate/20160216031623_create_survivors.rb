class CreateSurvivors < ActiveRecord::Migration
  def change
    create_table :survivors do |t|
      t.string :name
      t.integer :age
      t.string :residence
      t.string :photo_url
      t.boolean :fantasy
      t.integer :elimination_number

      t.timestamps
    end
  end
end
