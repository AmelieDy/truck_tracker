class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string      :name
      t.integer     :category
      t.string      :city
      t.string      :zip_code
      t.string      :street_address
      t.string      :country
      t.text        :description
      t.boolean     :saved, default: 0
      t.timestamps
    end
  end
end
