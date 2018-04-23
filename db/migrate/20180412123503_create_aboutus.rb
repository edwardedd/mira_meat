class CreateAboutus < ActiveRecord::Migration
  def change
    create_table :aboutus do |t|
      t.string :title
      t.text :description
      t.string :main_image
      t.string :main_video
      t.string :second_title
      t.text :second_description
      t.string :second_image
      t.string :third_title
      t.text :third_description
      t.text :third_description_right
      t.text :frase
      t.text :history_text
    end
  end
end
