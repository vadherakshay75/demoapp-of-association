class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :name
      t.string :nickname

      t.timestamps
    end
  end
end
