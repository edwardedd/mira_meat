class CreateVacancy < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :vacancy
      t.integer :salary
      t.boolean :show
    end
  end
end
