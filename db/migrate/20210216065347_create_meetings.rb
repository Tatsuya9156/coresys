class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.datetime   :meeting_datetime
      t.references :customer,     foreign_key: true
      t.references :worker,       foreign_key: true
      t.timestamps
    end
  end
end
