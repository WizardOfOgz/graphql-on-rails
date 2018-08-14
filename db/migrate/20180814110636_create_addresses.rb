class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
