require 'rails_helper'

RSpec.describe Worker, type: :model do
  before do
    @worker = FactoryBot.build(:worker)
  end

  describe '職人新規登録' do
    context '新規登録ができるとき' do
      it '職人番号(worker_number)、名前(漢字)(name)、名前(カナ)(name_kana)、屋号(trade_name)、電話番号(phone)、メールアドレス(email)、パスワード(password)、パスワード確認(password_confirmation)、居住地の郵便番号(address_zip)、居住地の住所(address)が存在すれば登録できる' do
        expect(@worker).to be_valid
      end
      it '倉庫の郵便番号(warehouse_zip)、倉庫の住所(warehouse)、イナバの直送コード(inaba)、ヨドの直送コード(yodo)、タクボの直送コード(takubo)、YKKAPの直送コード(ykkap)、三協アルミの直送コード(sankyo)、LIXILの直送コード(lixil)が空でも登録できる' do
        @worker.warehouse_zip = nil
        @worker.warehouse = nil
        @worker.inaba = nil
        @worker.yodo = nil
        @worker.takubo = nil
        @worker.ykkap = nil
        @worker.sankyo = nil
        @worker.lixil = nil
        expect(@worker).to be_valid
      end
    end

    context '新規登録ができないとき' do
    end
  end
end
