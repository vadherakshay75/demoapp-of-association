class CreateStandards < ActiveRecord::Migration[5.2]
  def change
    create_table :standards do |t|
      t.integer :standard

      t.timestamps
    end
  end
end
