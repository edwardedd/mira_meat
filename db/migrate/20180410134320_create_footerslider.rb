class CreateFooterslider < ActiveRecord::Migration
  def change
    create_table :footersliders do |t|
      t.string :image
      t.boolean :show
    end
  end
end
