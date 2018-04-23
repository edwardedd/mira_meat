class CreateWholesale < ActiveRecord::Migration
  def change
    create_table :wholesales do |t|
      t.string :main_image
      t.string :first_title
      t.string :second_title
      t.string :second_image
      t.string :third_title
      t.string :fourth_title
      t.string :fifth_title
      t.string :sixth_title
      t.string :review_title
      t.text :review_description
    end
  end
end
