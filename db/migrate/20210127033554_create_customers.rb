class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.date        :order_date,    null: false
      t.integer     :store_id,      null: false
      t.integer     :status_id,     null: false, default: "1"
      t.string      :name,          null: false
      t.string      :name_kana,     null: false
      t.string      :phone,         null: false
      t.string      :email,         null: false
      t.string      :address_zip,   null: false
      t.string      :address,       null: false
      t.string      :residence_zip, null: false
      t.string      :residence,     null: false
      t.references  :employee,      foreign_key: true
      t.timestamps
    end
  end
end
