class AddColumn5 < ActiveRecord::Migration
  def change
    add_column :products, :price, :integer
    add_column :products, :freeze_type, :string
    add_column :mains, :video_cover, :string
  end
end
