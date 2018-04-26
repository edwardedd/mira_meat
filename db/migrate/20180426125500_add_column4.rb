class AddColumn4 < ActiveRecord::Migration
  def change
    add_column :aboutus, :file, :string
  end
end
