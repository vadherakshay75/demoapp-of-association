class CreateMentorsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :mentors_students do |t|
      t.references :student, :mentor, foreign_key: true

      t.timestamps
    end
  end
end
