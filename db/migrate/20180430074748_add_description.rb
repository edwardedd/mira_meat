class AddDescription < ActiveRecord::Migration
  def change
    add_column :products, :product_description, :string
  end
end
