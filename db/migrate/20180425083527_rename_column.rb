class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :products, :type, :part_of_meat
  end
end
