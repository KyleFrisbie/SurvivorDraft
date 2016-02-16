class CreateSurvivorsTribes < ActiveRecord::Migration
  def change
    create_table :survivors_tribes do |t|
      t.references :survivor, index: true
      t.references :tribe, index: true

      t.timestamps
    end
  end
end
