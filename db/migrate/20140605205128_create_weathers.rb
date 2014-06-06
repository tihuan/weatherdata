class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :temp
      t.integer :humidity
      t.integer :pressure
      t.integer :temp_min
      t.integer :temp_max
      t.belongs_to :city

      t.timestamps
    end
  end
end
