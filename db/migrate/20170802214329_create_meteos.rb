class CreateMeteos < ActiveRecord::Migration[5.1]
  def change
    create_table :meteos do |t|

      t.timestamps
    end
  end
end
