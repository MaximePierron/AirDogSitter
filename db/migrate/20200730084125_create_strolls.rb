class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.string :location
      t.integer :duration

      t.timestamps
    end
  end
end
