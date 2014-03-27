class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.Float :amount
      t.string :unit
      t.references :commodity, index: true
      t.references :when, index: true
      t.references :location, index: true

      t.timestamps
    end
  end
end
