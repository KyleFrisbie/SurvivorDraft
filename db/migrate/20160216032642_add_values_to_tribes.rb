class AddValuesToTribes < ActiveRecord::Migration
  def change
    add_column :tribes, :immunity_wins, :integer
    add_column :tribes, :reward_wins, :integer
  end
end
