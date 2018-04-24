class CreatePolicy < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.text :text
    end
  end
end
