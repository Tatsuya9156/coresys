# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_03_085639) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "chat_employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "chat_id"
    t.bigint "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chat_id"], name: "index_chat_employees_on_chat_id"
    t.index ["employee_id"], name: "index_chat_employees_on_employee_id"
  end

  create_table "chat_workers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "chat_id"
    t.bigint "worker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chat_id"], name: "index_chat_workers_on_chat_id"
    t.index ["worker_id"], name: "index_chat_workers_on_worker_id"
  end

  create_table "chats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "employee_id"
    t.bigint "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_comments_on_customer_id"
    t.index ["employee_id"], name: "index_comments_on_employee_id"
  end

  create_table "constructions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "construction_datetime"
    t.date "completion_date"
    t.bigint "customer_id"
    t.bigint "worker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_constructions_on_customer_id"
    t.index ["worker_id"], name: "index_constructions_on_worker_id"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "order_date", null: false
    t.integer "store_id", null: false
    t.integer "status_id", default: 1, null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "address_zip", null: false
    t.string "address", null: false
    t.string "residence_zip", null: false
    t.string "residence", null: false
    t.bigint "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_customers_on_employee_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "employee_number", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "section", null: false
    t.string "position", null: false
    t.string "phone", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "enrolled", default: true, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "meetings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "meeting_datetime"
    t.bigint "customer_id"
    t.bigint "worker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_meetings_on_customer_id"
    t.index ["worker_id"], name: "index_meetings_on_worker_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "chat_id"
    t.string "wordable_type"
    t.bigint "wordable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["wordable_type", "wordable_id"], name: "index_messages_on_wordable_type_and_wordable_id"
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "message_id"
    t.bigint "client_id"
    t.bigint "pic_id"
    t.datetime "deadline", null: false
    t.boolean "done", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_tasks_on_client_id"
    t.index ["message_id"], name: "index_tasks_on_message_id"
    t.index ["pic_id"], name: "index_tasks_on_pic_id"
  end

  create_table "workers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "worker_number", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "trade_name", null: false
    t.string "phone", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "address_zip", null: false
    t.string "address", null: false
    t.string "warehouse_zip", null: false
    t.string "warehouse", null: false
    t.string "warehouse_info", null: false
    t.string "inaba", null: false
    t.string "yodo", null: false
    t.string "takubo", null: false
    t.string "ykkap", null: false
    t.string "sankyo", null: false
    t.string "lixil", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_workers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_workers_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "chat_employees", "chats"
  add_foreign_key "chat_employees", "employees"
  add_foreign_key "chat_workers", "chats"
  add_foreign_key "chat_workers", "workers"
  add_foreign_key "comments", "customers"
  add_foreign_key "comments", "employees"
  add_foreign_key "constructions", "customers"
  add_foreign_key "constructions", "workers"
  add_foreign_key "customers", "employees"
  add_foreign_key "meetings", "customers"
  add_foreign_key "meetings", "workers"
  add_foreign_key "messages", "chats"
  add_foreign_key "tasks", "employees", column: "client_id"
  add_foreign_key "tasks", "employees", column: "pic_id"
  add_foreign_key "tasks", "messages"
end
