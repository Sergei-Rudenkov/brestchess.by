class AddBirthdayAndAchivmentToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birthday, :string
    add_column :students, :achievement, :string
  end
end
