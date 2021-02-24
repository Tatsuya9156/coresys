
##### 社員データ

employee = Employee.create!(
      employee_number: "0001",
      name:            "柏木清人",
      name_kana:       "カシワギキヨト",
      section:         "役員会",
      position:        "代表取締役社長",
      phone:           "09000345678",
      admin:           true,
      enrolled:        true,
      email:           "test1@example.com",
      password:        "coresys0001",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_1.jpg')), filename: 'face_image_1.jpg')

employee = Employee.create!(
      employee_number: "0002",
      name:            "石塚立樹",
      name_kana:       "イシヅカタツキ",
      section:         "営業チーム",
      position:        "部長",
      phone:           "09000871625",
      admin:           true,
      enrolled:        true,
      email:           "test2@example.com",
      password:        "coresys0002",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_7.jpg')), filename: 'face_image_7.jpg')

employee = Employee.create!(
      employee_number: "0003",
      name:            "堀江裕斗",
      name_kana:       "ホリエユウト",
      section:         "現調管理チーム",
      position:        "係長",
      phone:           "09000981622",
      admin:           true,
      enrolled:        true,
      email:           "test3@example.com",
      password:        "coresys0003",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_5.jpg')), filename: 'face_image_5.jpg')

employee = Employee.create!(
      employee_number: "0004",
      name:            "井上季里",
      name_kana:       "イノウエリリ",
      section:         "受発注チーム",
      position:        "主任",
      phone:           "09000716253",
      admin:           true,
      enrolled:        true,
      email:           "test4@example.com",
      password:        "coresys0004",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_4.jpg')), filename: 'face_image_4.jpg')

employee = Employee.create!(
      employee_number: "0005",
      name:            "杉山憲司",
      name_kana:       "スギヤマケンジ",
      section:         "工程管理チーム",
      position:        "チーフ",
      phone:           "09000829988",
      admin:           true,
      enrolled:        true,
      email:           "test5@example.com",
      password:        "coresys0005",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_6.jpg')), filename: 'face_image_6.jpg')

employee = Employee.create!(
      employee_number: "0006",
      name:            "神谷砂良",
      name_kana:       "カミヤサラ",
      section:         "工程管理チーム",
      position:        "一般社員",
      phone:           "09000873645",
      admin:           false,
      enrolled:        true,
      email:           "test6@example.com",
      password:        "coresys0006",
)
employee.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_8.jpg')), filename: 'face_image_8.jpg')

employee = Employee.create!(
      employee_number: "0007",
      name:            "大橋清一",
      name_kana:       "オオハシセイイチ",
      section:         "営業チーム",
      position:        "一般社員",
      phone:           "09000442611",
      admin:           false,
      enrolled:        true,
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
      warehouse_info: "自宅の庭の一角です。倉庫ではありません。",
      inaba:          "直送不可",
      yodo:           "直送不可",
      takubo:         "直送不可",
      ykkap:          "直送不可",
      sankyo:         "直送不可",
      lixil:          "直送不可"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_10.jpg')), filename: 'face_image_10.jpg')

worker = Worker.create!(
      worker_number:  "5004",
      name:           "武井正裕",
      name_kana:      "タケイマサヒロ",
      trade_name:     "マサ工房",
      phone:          "09000301743",
      email:          "testtest4@example.com",
      password:       "coresys5004",
      address_zip:    "201-6723",
      address:        "愛知県所沢市金成入生田25-1",
      warehouse_zip:  "201-4422",
      warehouse:      "愛知県所沢市金成入生田30-5-1",
      warehouse_info: "鍵番号：5511",
      inaba:          "未申請",
      yodo:           "未申請",
      takubo:         "未申請",
      ykkap:          "171WA4",
      sankyo:         "B1",
      lixil:          "109825"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_11.jpg')), filename: 'face_image_11.jpg')

worker = Worker.create!(
      worker_number:  "5005",
      name:           "二宮龍星",
      name_kana:      "ニノミヤリュウセイ",
      trade_name:     "二宮硝子店",
      phone:          "09000711144",
      email:          "testtest5@example.com",
      password:       "coresys5005",
      address_zip:    "401-3524",
      address:        "静岡県伊達郡国見町三潴町清松40-1",
      warehouse_zip:  "401-3524",
      warehouse:      "静岡県伊達郡国見町三潴町清松40-1",
      warehouse_info: "早朝の配送により近隣からクレームがあったため注意",
      inaba:          "401",
      yodo:           "22",
      takubo:         "A300",
      ykkap:          "171EC1",
      sankyo:         "B9",
      lixil:          "198123"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_12.jpg')), filename: 'face_image_12.jpg')

worker = Worker.create!(
      worker_number:  "5006",
      name:           "石井壮一郎",
      name_kana:      "イシイソウイチロウ",
      trade_name:     "石井建設",
      phone:          "09000303011",
      email:          "testtest6@example.com",
      password:       "coresys5006",
      address_zip:    "200-1100",
      address:        "岐阜県高山市小淵沢町下笹尾110-1",
      warehouse_zip:  "200-1100",
      warehouse:      "岐阜県高山市小淵沢町下笹尾110-1",
      warehouse_info: "受付に声をかければ案内してくれます",
      inaba:          "300",
      yodo:           "10G",
      takubo:         "GA220",
      ykkap:          "171RQ2",
      sankyo:         "C40",
      lixil:          "197156"
)
worker.face_image.attach(io: File.open(Rails.root.join('./app/assets/images/face_image_13.jpg')), filename: 'face_image_13.jpg')


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

customer = Customer.create!(
      order_date:    "2021-02-20",
      store_id:      "15",
      status_id:     "8",
      name:          "千田世里花",
      name_kana:     "センダセリカ",
      phone:         "09000301725",
      email:         "senda@example.com",
      address_zip:   "401-2244",
      address:       "三重県大島郡天城町奈川440-10",
      residence_zip: "401-2244",
      residence:     "三重県大島郡天城町奈川440-10",
      employee_id:   "5"
)

customer = Customer.create!(
      order_date:    "2021-02-10",
      store_id:      "11",
      status_id:     "2",
      name:          "金井鮎夢",
      name_kana:     "カナイアユム",
      phone:         "09000558162",
      email:         "kanai@example.com",
      address_zip:   "500-1111",
      address:       "三重県芦屋市神出町小束野300-1",
      residence_zip: "500-1111",
      residence:     "三重県芦屋市神出町小束野300-1",
      employee_id:   "7"
)

customer = Customer.create!(
      order_date:    "2021-02-05",
      store_id:      "13",
      status_id:     "3",
      name:          "豊田寿一",
      name_kana:     "トヨダトシカズ",
      phone:         "09000558162",
      email:         "toyoda@example.com",
      address_zip:   "101-0099",
      address:       "静岡県下北郡佐井村谷田10-10",
      residence_zip: "101-0099",
      residence:     "静岡県下北郡佐井村谷田10-10",
      employee_id:   "2"
)

customer = Customer.create!(
      order_date:    "2021-01-30",
      store_id:      "10",
      status_id:     "3",
      name:          "宮城晴斗",
      name_kana:     "ミヤギハルト",
      phone:         "09000411029",
      email:         "miyagi@example.com",
      address_zip:   "330-2201",
      address:       "岐阜県児玉郡神川町上黒瀬40-4",
      residence_zip: "330-2201",
      residence:     "岐阜県児玉郡神川町上黒瀬40-4",
      employee_id:   "4"
)