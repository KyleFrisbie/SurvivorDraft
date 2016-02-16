class CreateSeasonsSurvivors < ActiveRecord::Migration
  def change
    create_table :seasons_survivors do |t|
      t.references :season, index: true
      t.references :survivor, index: true

      t.timestamps
    end
  end
end
