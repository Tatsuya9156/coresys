class CreateChatWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_workers do |t|
      t.references :chat,   foreign_key: true
      t.references :worker, foreign_key: true
      t.timestamps
    end
  end
end
