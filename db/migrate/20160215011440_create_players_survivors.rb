class CreatePlayersSurvivors < ActiveRecord::Migration
  def change
    create_table :players_survivors do |t|
      t.references :player, index: true
      t.references :survivor, index: true

      t.timestamps
    end
  end
end
