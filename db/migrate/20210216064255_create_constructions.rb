class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.datetime   :construction_datetime
      t.date       :completion_date
      t.references :customer,              foreign_key: true
      t.references :worker,                foreign_key: true
      t.timestamps
    end
  end
end
