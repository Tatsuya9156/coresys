class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.string :title, null: false
      t.timestamps
    end
  end
end