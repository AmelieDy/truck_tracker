class AddEmailToTruck < ActiveRecord::Migration[6.0]
  def change
    add_column :trucks, :email, :string
  end
end
