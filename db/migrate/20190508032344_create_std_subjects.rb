class CreateStdSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :std_subjects do |t|
      t.references :standard, :subject, foreign_key: true

      t.timestamps
    end
  end
end
