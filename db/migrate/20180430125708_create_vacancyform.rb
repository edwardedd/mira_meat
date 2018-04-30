class CreateVacancyform < ActiveRecord::Migration
  def change
    create_table :vacancyforms do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :file
    end
  end
end
