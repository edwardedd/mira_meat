class CreateContact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_number
      t.string :second_number
      t.string :third_number
      t.string :first_email
      t.string :second_email
      t.string :image
      t.string :first_adress
      t.string :map_link
      t.string :facebook
      t.string :twitter
      t.string :youtube
    end
  end
end
