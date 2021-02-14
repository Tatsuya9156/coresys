
##### 社員データ

employee = Employee.create!(
      employee_number: "0001",
      name:            "柏木清人",
      name_kana:       "カシワギキヨト",
      section:         "役員会",
      position:        "代表取締役社長",
      phone:           "09000345678",
      admin:           true,
      email:           "test1@example.com",
      password:        "coresys0001",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_1.jpg')), filename: 'face_image_1.jpg')

employee = Employee.create!(
      employee_number: "0002",
      name:            "石塚立樹",
      name_kana:       "イシヅカタツキ",
      section:         "営業",
      position:        "部長",
      phone:           "09000871625",
      admin:           true,
      email:           "test2@example.com",
      password:        "coresys0002",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_7.jpg')), filename: 'face_image_7.jpg')

employee = Employee.create!(
      employee_number: "0003",
      name:            "堀江裕斗",
      name_kana:       "ホリエユウト",
      section:         "現調管理",
      position:        "係長",
      phone:           "09000981622",
      admin:           true,
      email:           "test3@example.com",
      password:        "coresys0003",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_5.jpg')), filename: 'face_image_5.jpg')

employee = Employee.create!(
      employee_number: "0004",
      name:            "井上季里",
      name_kana:       "イノウエリリ",
      section:         "受発注",
      position:        "主任",
      phone:           "09000716253",
      admin:           true,
      email:           "test4@example.com",
      password:        "coresys0004",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_4.jpg')), filename: 'face_image_4.jpg')

employee = Employee.create!(
      employee_number: "0005",
      name:            "杉山憲司",
      name_kana:       "スギヤマケンジ",
      section:         "工程管理",
      position:        "チーフ",
      phone:           "09000829988",
      admin:           true,
      email:           "test5@example.com",
      password:        "coresys0005",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_6.jpg')), filename: 'face_image_6.jpg')

employee = Employee.create!(
      employee_number: "0006",
      name:            "神谷砂良",
      name_kana:       "カミヤサラ",
      section:         "工程管理",
      position:        "一般社員",
      phone:           "09000873645",
      admin:           false,
      email:           "test6@example.com",
      password:        "coresys0006",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_8.jpg')), filename: 'face_image_8.jpg')

employee = Employee.create!(
      employee_number: "0007",
      name:            "大橋清一",
      name_kana:       "オオハシセイイチ",
      section:         "営業",
      position:        "一般社員",
      phone:           "09000442611",
      admin:           false,
      email:           "test7@example.com",
      password:        "coresys0007",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_9.jpg')), filename: 'face_image_9.jpg')


##### 職人データ

worker = Worker.create!(
      worker_number:  "5001",
      name:           "川上明弥",
      name_kana:      "カワカミアキヤ",
      trade_name:     "川上工務店",
      phone:          "09000225678",
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
      phone:          "09000351678",
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

worker = Worker.create!(
      worker_number:  "5003",
      name:           "丹羽晃平",
      name_kana:      "ニワコウヘイ",
      trade_name:     "丹羽左官店",
      phone:          "09000811625",
      email:          "testtest3@example.com",
      password:       "coresys5003",
      address_zip:    "501-4567",
      address:        "愛知県旭川市坂下新田3-19",
      warehouse_zip:  "234-5678",
      warehouse:      "愛知県旭川市坂下新田3-19",
      warehouse_info: "直送不可",
      inaba:          "直送不可",
      yodo:           "直送不可",
      takubo:         "直送不可",
      ykkap:          "直送不可",
      sankyo:         "直送不可",
      lixil:          "直送不可"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_10.jpg')), filename: 'face_image_10.jpg')


##### 顧客データ

customer = Customer.create!(
      order_date:    "2021-02-08",
      store_id:      "7",
      status_id:     "2",
      name:          "近藤友将",
      name_kana:     "コンドウトモマサ",
      phone:         "09000121678",
      email:         "kondo@example.com",
      address_zip:   "430-9911",
      address:       "岐阜県河内郡上三川町宍道町白石441-7",
      residence_zip: "455-1900",
      residence:     "岐阜県佐渡市富浦町豊岡30",
      employee_id:   "1"
)

customer = Customer.create!(
      order_date:    "2021-01-27",
      store_id:      "1",
      status_id:     "1",
      name:          "斎藤祐真",
      name_kana:     "サイトウユウマ",
      phone:         "09000298716",
      email:         "saito@example.com",
      address_zip:   "510-0001",
      address:       "愛知県朝倉郡東峰村西が迫4-4-1",
      residence_zip: "228-9855",
      residence:     "愛知県都城市新野東22-4",
      employee_id:   "2"
)

customer = Customer.create!(
      order_date:    "2021-02-01",
      store_id:      "4",
      status_id:     "4",
      name:          "今野絵理",
      name_kana:     "コンノエリ",
      phone:         "09000591827",
      email:         "konno@example.com",
      address_zip:   "561-0001",
      address:       "愛知県習志野市国分北30-22-2",
      residence_zip: "207-1923",
      residence:     "愛知県宮津市嵐山虚空蔵山町331",
      employee_id:   "3"
)