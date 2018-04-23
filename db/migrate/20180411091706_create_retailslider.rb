class CreateRetailslider < ActiveRecord::Migration
  def change
    create_table :retailsliders do |t|
      t.string :image
      t.string :first_title
      t.string :second_title
      t.boolean :show
    end
  end
end
