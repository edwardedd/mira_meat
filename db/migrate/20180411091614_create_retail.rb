class CreateRetail < ActiveRecord::Migration
  def change
    create_table :retails do |t|
      t.string :main_image
      t.string :first_title
      t.string :second_title
      t.string :third_title
    end
  end
end
