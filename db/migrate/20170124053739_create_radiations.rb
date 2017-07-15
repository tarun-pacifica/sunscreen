class CreateRadiations < ActiveRecord::Migration[5.0]
  def change
    create_table :radiations do |t|
      t.string :city
      t.integer :index
      t.time :time
      t.date :date
      t.string :utcdatetime
      t.integer :city_id
      t.timestamps
    end
  end
end
