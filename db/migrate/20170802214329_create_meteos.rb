class CreateMeteos < ActiveRecord::Migration[5.1]
  def change
    create_table :meteos do |t|
      t.integer :temperature
      t.integer :pressure
      t.integer :humidity
      t.timestamps
    end
  end
end
