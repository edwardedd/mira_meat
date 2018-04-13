class CreateProduction < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :main_image
      t.string :first_title
      t.string :second_title
      t.string :second_image
      t.text :description
      t.string :review_title
      t.text :review_description
    end
  end
end
