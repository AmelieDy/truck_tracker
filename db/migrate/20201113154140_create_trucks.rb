class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string      :name, index: true
      t.string      :category, index: true
      t.string      :city
      t.string      :zip_code
      t.string      :street_address, index: true
      t.string      :country
      t.text        :description
      t.string      :image
      t.boolean     :saved, default: 0
      t.timestamps
    end
  end
end
