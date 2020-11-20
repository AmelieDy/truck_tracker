class AddPhonesToTruck < ActiveRecord::Migration[6.0]
  def change
    add_column :trucks, :phone, :string
  end
end
