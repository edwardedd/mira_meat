class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :category
      t.string :amount
      t.text :comment 
    end
  end
end
