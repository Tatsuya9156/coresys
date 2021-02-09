
##### 社員データ

employee = Employee.create!(
      employee_number: "0001",
      name:            "柏木清人",
      name_kana:       "カシワギキヨト",
      position:        "代表取締役社長",
      phone:           "09012345678",
      admin:           true,
      email:           "test1@example.com",
      password:        "coresys0001",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_1.jpg')), filename: 'face_image_1.jpg')

employee = Employee.create!(
      employee_number: "0002",
      name:            "井上季里",
      name_kana:       "イノウエリリ",
      position:        "主任",
      phone:           "09088716253",
      admin:           true,
      email:           "test2@example.com",
      password:        "coresys0002",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_4.jpg')), filename: 'face_image_4.jpg')


##### 職人データ

worker = Worker.create!(
      worker_number:  "5001",
      name:           "川上明弥",
      name_kana:      "カワカミアキヤ",
      trade_name:     "川上工務店",
      phone:          "08012345678",
      email:          "testtest1@example.com",
      password:       "coresys5001",
      address_zip:    "123-4567",
      address:        "愛知県名古屋市中区山西4-11-2",
      warehouse_zip:  "234-5678",
      warehouse:      "岐阜県多治見市東町1-1-3",
      warehouse_info: "鍵番号：1234",
      inaba:          "申請中",
      yodo:           "直送不可",
      takubo:         "未申請",
      ykkap:          "172AC3",
      sankyo:         "B3",
      lixil:          "189227"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_2.jpg')), filename: 'face_image_2.jpg')

worker = Worker.create!(
      worker_number:  "5002",
      name:           "秋元尚行",
      name_kana:      "アキモトナオユキ",
      trade_name:     "アキモトエクステリア",
      phone:          "08012345678",
      email:          "testtest2@example.com",
      password:       "coresys5002",
      address_zip:    "123-4567",
      address:        "愛知県長久手市宮城2-10",
      warehouse_zip:  "234-5678",
      warehouse:      "愛知県名古屋市名東区南原5-1",
      warehouse_info: "4t車不可",
      inaba:          "直送不可",
      yodo:           "直送不可",
      takubo:         "未申請",
      ykkap:          "172AE8",
      sankyo:         "B7",
      lixil:          "127611"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_3.jpg')), filename: 'face_image_3.jpg')


##### 顧客データ

customer = Customer.create!(
      order_date:    "2021-02-08",
      store_id:      "7",
      status_id:     "2",
      name:          "近藤友将",
      name_kana:     "コンドウトモマサ",
      phone:         "07012345678",
      email:         "kondo@example.com",
      address_zip:   "430-9911",
      address:       "岐阜県河内郡上三川町宍道町白石441-7",
      residence_zip: "455-1900",
      residence:     "岐阜県佐渡市富浦町豊岡30"
)

customer = Customer.create!(
      order_date:    "2021-01-27",
      store_id:      "1",
      status_id:     "1",
      name:          "斎藤祐真",
      name_kana:     "サイトウユウマ",
      phone:         "07055298716",
      email:         "saito@example.com",
      address_zip:   "510-0001",
      address:       "愛知県朝倉郡東峰村西が迫4-4-1",
      residence_zip: "228-9855",
      residence:     "愛知県都城市新野東22-4"
)