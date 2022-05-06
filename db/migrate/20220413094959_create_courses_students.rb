class CreateCoursesStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :courses_students do |t|
      t.integer :student_id
      t.integer :course_id
    end
  end
end
