class CreateOrderServices < ActiveRecord::Migration[5.2]
  def change
    create_table :order_services do |t|
      t.references :service, foreign_key: true
      t.integer :amount
      t.string :employee
      t.date :date
      t.time :starttime
      t.time :endtime
      t.text :detail
      t.references :user, foreign_key: true
      t.decimal :totalvalue
      t.decimal :liquidvalue
      t.decimal :discount

      t.timestamps
    end
  end
end
