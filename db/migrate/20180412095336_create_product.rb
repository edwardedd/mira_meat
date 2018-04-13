class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :article_num
      t.string :country
      t.string :company_name
      t.string :image
      t.string :category
      t.string :temperature
      t.boolean :import
      t.boolean :export
      t.boolean :present
      t.boolean :show
    end
  end
end
