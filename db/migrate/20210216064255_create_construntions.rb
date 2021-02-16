class CreateConstruntions < ActiveRecord::Migration[6.0]
  def change
    create_table :construntions do |t|
      t.datetime   :construntion_datetime, null: false
      t.date       :completion_date
      t.references :customer,              foreign_key: true
      t.references :worker,                foreign_key: true
      t.timestamps
    end
  end
end
