class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :phone
      t.string :website
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
