require 'rails_helper'

RSpec.describe Customer, type: :model do
  before do
    @customer = FactoryBot.build(:customer)
  end

  describe '顧客新規登録' do
    context '新規登録ができるとき' do
      it '受注日(order_date)、受注店舗(store_id)、ステータス(status)、名前(漢字)(name)、名前(カナ)(name_kana)、電話番号(phone)、メールアドレス(email)、居住地の郵便番号(address_zip)、居住地の住所(address)が存在すれば登録できる' do
        expect(@customer).to be_valid
      end
      it '施工先の郵便番号(residence_zip)、施工先の住所(residence)が空でも登録できる' do
        @customer.residence_zip = nil
        @customer.residence = nil
        expect(@customer).to be_valid
      end
    end

    context '新規登録ができないとき' do
      it '受注日(order_date)が空だと登録できない' do
        @customer.order_date = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Order date can't be blank")
      end
      it '受注店舗(store_id)が空だと登録できない' do
        @customer.store_id = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Store can't be blank")
      end
      it 'ステータス(status_id)が空だと登録できない' do
        @customer.status_id = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Status can't be blank")
      end
      it '名前(漢字)(name)が空だと登録できない' do
        @customer.name = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Name can't be blank")
      end
      it '名前(漢字)(name)が漢字・ひらがな・カタカナでないと登録できない' do
        @customer.name = "abc"
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Name is invalid")
      end
      it '名前(カナ)(name_kana)が空だと登録できない' do
        @customer.name_kana = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Name kana can't be blank")
      end
      it '名前(カナ)(name_kana)がカタカナでないと登録できない' do
        @customer.name_kana = "漢字"
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Name kana is invalid")
      end
      it '電話番号(phone)が空だと登録できない' do
        @customer.phone = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Phone can't be blank")
      end
      it '電話番号(phone)が半角数字でないと登録できない' do
        @customer.phone = "abcdefghijk"
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Phone is invalid")
      end
      it '電話番号(phone)が10桁未満だと登録できない' do
        @customer.phone = 123456789
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Phone is invalid")
      end
      it '電話番号(phone)が11桁を超えると登録できない' do
        @customer.phone = 123456789012
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Phone is invalid")
      end
      it 'メールアドレス(email)が空だと登録できない' do
        @customer.email = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Email can't be blank")
      end
      it 'メールアドレス(email)が@が含まれないと登録できない' do
        @customer.email = "test.example"
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Email is invalid")
      end
      it '居住地の郵便番号(address_zip)が空だと登録できない' do
        @customer.address_zip = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Address zip can't be blank")
      end
      it '居住地の郵便番号(address_zip)が半角数字3桁-4桁でないと登録できない' do
        @customer.address_zip = '1234-567'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('Address zip is invalid')
      end
      it '居住地の郵便番号(address_zip)がハイフンなしでは登録できない' do
        @customer.address_zip = '1234567'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('Address zip is invalid')
      end
      it '居住地の住所(address)が空だと登録できない' do
        @customer.address = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include("Address can't be blank")
      end
      it '施工先の郵便番号(residence_zip)が半角数字3桁-4桁でないと登録できない' do
        @customer.residence_zip = '1234-567'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('Residence zip is invalid')
      end
      it '施工先の郵便番号(residence_zip)がハイフンなしでは登録できない' do
        @customer.residence_zip = '1234567'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('Residence zip is invalid')
      end
    end
  end
end
