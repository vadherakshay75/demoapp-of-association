class CreatePrincipals < ActiveRecord::Migration[5.2]
  def change
    create_table :principals do |t|
      t.string :name
      t.references :std_principal
      t.timestamps
    end
  end
end
