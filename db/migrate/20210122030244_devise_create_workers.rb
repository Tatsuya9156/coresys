# frozen_string_literal: true

class DeviseCreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      ## Database authenticatable
      t.string  :worker_number,      null: false
      t.string  :name,               null: false
      t.string  :name_kana,          null: false
      t.string  :trade_name,         null: false
      t.string  :phone,              null: false
      t.string  :email,              null: false, default: ""
      t.string  :encrypted_password, null: false, default: ""
      t.string  :address_zip,        null: false
      t.string  :address,            null: false
      t.string  :warehouse_zip
      t.string  :warehouse
      t.string  :inaba
      t.string  :yodo
      t.string  :takubo
      t.string  :ykkap
      t.string  :sankyo
      t.string  :lixil

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :workers, :email,                unique: true
    add_index :workers, :reset_password_token, unique: true
    # add_index :workers, :confirmation_token,   unique: true
    # add_index :workers, :unlock_token,         unique: true
  end
end
