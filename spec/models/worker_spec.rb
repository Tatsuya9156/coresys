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
      it '職人番号(worker_number)が空だと登録できない' do
        @worker.worker_number = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Worker number can't be blank")
      end
      it '職人番号(worker_number)が半角数字のみでないと登録できない' do
        @worker.worker_number = 'abcd'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Worker number is invalid')
      end
      it '職人番号(worker_number)が4桁未満だと登録できない' do
        @worker.worker_number = 123
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Worker number is invalid')
      end
      it '職人番号(worker_number)が4桁を超えると登録できない' do
        @worker.worker_number = 12_345
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Worker number is invalid')
      end
      it '職人番号(worker_number)が登録済みの社員番号と重複していると登録できない' do
        @worker.save
        another_worker = FactoryBot.build(:worker, worker_number: @worker.worker_number)
        another_worker.valid?
        expect(another_worker.errors.full_messages).to include('Worker number has already been taken')
      end
      it '名前(漢字)(name)が空だと登録できない' do
        @worker.name = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Name can't be blank")
      end
      it '名前(漢字)(name)が漢字・ひらがな・カタカナでないと登録できない' do
        @worker.name = 'abc'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Name is invalid')
      end
      it '名前(カナ)(name_kana)が空だと登録できない' do
        @worker.name_kana = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Name kana can't be blank")
      end
      it '名前(カナ)(name_kana)がカタカナでないと登録できない' do
        @worker.name_kana = '漢字'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Name kana is invalid')
      end
      it '屋号(trade_name)が空だと登録できない' do
        @worker.trade_name = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Trade name can't be blank")
      end
      it '電話番号(phone)が空だと登録できない' do
        @worker.phone = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Phone can't be blank")
      end
      it '電話番号(phone)が半角数字でないと登録できない' do
        @worker.phone = 'abcdefghijk'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Phone is invalid')
      end
      it '電話番号(phone)が10桁未満だと登録できない' do
        @worker.phone = 123_456_789
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Phone is invalid')
      end
      it '電話番号(phone)が11桁を超えると登録できない' do
        @worker.phone = 123_456_789_012
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Phone is invalid')
      end
      it 'メールアドレス(email)が空だと登録できない' do
        @worker.email = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Email can't be blank")
      end
      it 'メールアドレス(email)が@が含まれないと登録できない' do
        @worker.email = 'test.example'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Email is invalid')
      end
      it 'メールアドレス(email)が登録済みのメールアドレスと重複していると登録できない' do
        @worker.save
        another_worker = FactoryBot.build(:worker, email: @worker.email)
        another_worker.valid?
        expect(another_worker.errors.full_messages).to include('Email has already been taken')
      end
      it 'パスワード(password)が空だと登録できない' do
        @worker.password = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Password can't be blank")
      end
      it 'パスワード(password)が数字のみだと登録できない' do
        @worker.password = 123_456
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワード(password)が英字のみだと登録できない' do
        @worker.password = 'abcdef'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワード(password)が6文字未満だと登録できない' do
        @worker.password = 12_345
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワード(password)とパスワード確認(password_confirmation)が不一致だと登録できない' do
        @worker.password_confirmation = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '居住地の郵便番号(address_zip)が空だと登録できない' do
        @worker.address_zip = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Address zip can't be blank")
      end
      it '居住地の郵便番号(address_zip)が半角数字3桁-4桁でないと登録できない' do
        @worker.address_zip = '1234-567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Address zip is invalid')
      end
      it '居住地の郵便番号(address_zip)がハイフンなしでは登録できない' do
        @worker.address_zip = '1234567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Address zip is invalid')
      end
      it '居住地の住所(address)が空だと登録できない' do
        @worker.address = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include("Address can't be blank")
      end
      it '倉庫の郵便番号(warehouse_zip)が半角数字3桁-4桁でないと登録できない' do
        @worker.warehouse_zip = '1234-567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Warehouse zip is invalid')
      end
      it '倉庫の郵便番号(warehouse_zip)がハイフンなしでは登録できない' do
        @worker.warehouse_zip = '1234567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Warehouse zip is invalid')
      end
      it 'イナバの直送コード(inaba)が大文字半角英字か半角数字でないと登録できない' do
        @worker.inaba = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Inaba is invalid')
      end
      it 'ヨドの直送コード(yodo)が大文字半角英字か半角数字でないと登録できない' do
        @worker.yodo = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Yodo is invalid')
      end
      it 'タクボの直送コード(takubo)が大文字半角英字か半角数字でないと登録できない' do
        @worker.takubo = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Takubo is invalid')
      end
      it 'YKKAPの直送コード(ykkap)が大文字半角英字か半角数字でないと登録できない' do
        @worker.ykkap = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Ykkap is invalid')
      end
      it '三協アルミの直送コード(sankyo)が大文字半角英字か半角数字でないと登録できない' do
        @worker.sankyo = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Sankyo is invalid')
      end
      it 'LIXILの直送コード(lixil)が大文字半角英字か半角数字でないと登録できない' do
        @worker.lixil = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('Lixil is invalid')
      end
    end
  end
end
