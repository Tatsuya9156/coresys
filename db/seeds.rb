Employee.create!(
  [
    {
      employee_number: "0001",
      name:            "柏木清人",
      name_kana:       "カシワギキヨト",
      position:        "代表取締役社長",
      phone:           "09012345678",
      admin:           true,
      email:           "test1@example.com",
      password:        "coresys0001",
      face_image:      File.open(face_image_1.png)
    },
    {
      employee_number: "0002",
      name:            "井上季里",
      name_kana:       "イノウエリリ",
      position:        "主任",
      phone:           "09088716253",
      admin:           true,
      email:           "test2@example.com",
      password:        "coresys0002",
      face_image:      File.open(face_image_4.png)
    }
  ]
)

Worker.create!(
  [
    {
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
      face_image:      File.open(face_image_2.png)
    },
    {
      worker_number:  "5002",
      name:           "秋元尚行",
      name_kana:      "アキモトナオユキ",
      trade_name:     "田中工務店",
      phone:          "08012345678",
      email:          "testtest1@example.com",
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
      face_image:      File.open(face_image_3.png)
    }
  ]
)