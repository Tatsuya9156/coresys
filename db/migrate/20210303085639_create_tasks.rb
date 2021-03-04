class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :chat,     foreign_key: truee
      t.datetime   :deadline, null: false
      t.text       :text,     null: false
      t.references :client,   foreign_key: {to_table: :employees}
      t.references :pic,      foreign_key: {to_table: :employees}
      t.timestamps
    end
  end
end
