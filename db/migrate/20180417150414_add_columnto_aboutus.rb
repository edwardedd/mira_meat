class AddColumntoAboutus < ActiveRecord::Migration
  def change
    add_column :aboutus, :video_cover, :string
  end
end
