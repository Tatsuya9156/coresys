class CreateChatEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_employees do |t|
      t.references :chat,     foreign_key: true
      t.references :employee, foreign_key: true
      t.timestamps
    end
  end
end
