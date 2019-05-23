class CreateStdPrincipals < ActiveRecord::Migration[5.2]
  def change
    create_table :std_principals do |t|
      t.references :principal, :student, foreign_key: true

      t.timestamps
    end
  end
end
