class CreateOrderServices < ActiveRecord::Migration[5.2]
  def change
    create_table :order_services do |t|
      t.references :service, foreign_key: true
      t.integer :amount
      t.string :employee
      t.datetime :datestart
      t.datetime :dateend
      t.text :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
