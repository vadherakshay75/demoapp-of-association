class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :mother_name
      t.string :father_name
      t.references :student
      t.timestamps
    end
  end
end
