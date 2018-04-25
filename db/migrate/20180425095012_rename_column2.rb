class RenameColumn2 < ActiveRecord::Migration
  def change
    rename_column :aboutus, :main_video, :video_link

  end
end
