class CreateConsultation < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :comment
    end
  end
end
