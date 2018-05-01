class AddVacancyname < ActiveRecord::Migration
  def change
    add_column :vacancyforms, :vacancy_name, :string
    add_column :vacancyforms, :surname, :string
  end
end
