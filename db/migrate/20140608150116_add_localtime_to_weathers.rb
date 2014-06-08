class AddLocaltimeToWeathers < ActiveRecord::Migration
  def change
    add_column :weathers, :localtime, :timestamp
  end
end
