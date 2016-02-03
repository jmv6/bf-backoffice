class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :telephone_number
      t.string :address1
      t.string :address2
      t.string :town
      t.string :post_code
      t.string :county
      t.string :country
      t.string :product
      t.string :status
      t.text :notes
      t.integer :agent_number

      t.timestamps null: false
    end
  end
end
