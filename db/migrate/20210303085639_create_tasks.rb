class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :message,  foreign_key: true
      t.references :client,   foreign_key: {to_table: :employees}
      t.references :pic,      foreign_key: {to_table: :employees}
      t.datetime   :deadline, null: false
      t.boolean    :done,     null: false, default: false
      t.timestamps
    end
  end
end
