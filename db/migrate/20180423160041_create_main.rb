class CreateMain < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.text :main_description
      t.text :second_description
      t.text :third_description
      t.text :fourth_description
      t.string :video_link
    end
  end
end
