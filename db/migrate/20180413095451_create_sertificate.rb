class CreateSertificate < ActiveRecord::Migration
  def change
    create_table :sertificates do |t|
      t.string  :name
      t.string :image
      t.boolean :show
    end
  end
end
