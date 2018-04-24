class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.date :date
      t.string :second_title
      t.string :main_image
      t.string :second_image
      t.text :first_description
      t.text :second_description
      t.text :photo_description
      t.boolean :show
    end
  end
end
