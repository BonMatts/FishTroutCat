class CreateWhens < ActiveRecord::Migration
  def change
    create_table :whens do |t|
      t.integer :year
      t.integer :time_period

      t.timestamps
    end
  end
end
