class AddStateToTruck < ActiveRecord::Migration[6.0]
  def change
    add_column :trucks, :state, :integer, default: 0
  end
end
