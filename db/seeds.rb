Employee.create!(
  employee_number: "0001",
  name:            "管理者",
  name_kana:       "カンリシャ",
  position:        "代表取締役社長",
  phone:           "09012345678",
  admin:           true,
  email:           "test1@example.com",
  password:        "coresys0001"
)

Worker.create!(
  worker_number: "1001",
  name:          "田中太郎",
  name_kana:     "タナカタロウ",
  trade_name:    "田中工務店",
  phone:         "08012345678",
  email:         "testtest1@example.com",
  password:      "coresys1001",
  address_zip:   "123-4567",
  address:       "愛知県名古屋市中区栄"
)