class CreateHeaderslider < ActiveRecord::Migration
  def change
    create_table :headersliders do |t|
    t.string :image
    t.boolean :show
    end
  end
end
