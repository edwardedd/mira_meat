class CreateHistory < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :title
      t.string :year
      t.text :description
      t.string :image
      t.boolean :show 
    end
  end
end
