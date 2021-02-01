class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text       :text,        null: false
      t.references :chat,        foreign_key: true
      t.references :employee,    foreign_key: true
      t.references :worker,      foreign_key: true
      t.timestamps
    end
  end
end
