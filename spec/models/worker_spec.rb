require 'rails_helper'

RSpec.describe Worker, type: :model do
  before do
    @worker = FactoryBot.build(:worker)
  end

  describe '職人(Worker)新規登録に関するテスト' do
    context '新規登録が有効' do
      it '職人番号(worker_number)、名前(漢字)(name)、名前(カナ)(name_kana)、屋号(trade_name)、電話番号(phone)、メールアドレス(email)、
          パスワード(password)、パスワード確認(password_confirmation)、居住地の郵便番号(address_zip)、居住地の住所(address)、倉庫の郵便番号(warehouse_zip)、倉庫の住所(warehouse)、倉庫の情報(warehouse_info)、イナバの直送コード(inaba)、ヨドの直送コード(yodo)、タクボの直送コード(takubo)、
          YKKAPの直送コード(ykkap)、三協アルミの直送コード(sankyo)、LIXILの直送コード(lixil)が存在する' do
        expect(@worker).to be_valid
      end
    end

    context '新規登録が無効' do
      it '職人番号(worker_number)が空である' do
        @worker.worker_number = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('職人番号を入力してください')
      end
      it '職人番号(worker_number)が半角数字のみではない' do
        @worker.worker_number = 'abcd'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('職人番号は半角数字4桁で入力してください')
      end
      it '職人番号(worker_number)が4桁未満' do
        @worker.worker_number = 123
        @worker.valid?
        expect(@worker.errors.full_messages).to include('職人番号は半角数字4桁で入力してください')
      end
      it '職人番号(worker_number)が4桁を超える' do
        @worker.worker_number = 12_345
        @worker.valid?
        expect(@worker.errors.full_messages).to include('職人番号は半角数字4桁で入力してください')
      end
      it '職人番号(worker_number)が登録済みの社員番号と重複している' do
        @worker.save
        another_worker = FactoryBot.build(:worker, worker_number: @worker.worker_number)
        another_worker.valid?
        expect(another_worker.errors.full_messages).to include('職人番号はすでに存在します')
      end
      it '名前(漢字)(name)が空である' do
        @worker.name = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('名前を入力してください')
      end
      it '名前(漢字)(name)が漢字・ひらがな・カタカナではない' do
        @worker.name = 'abc'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('名前は漢字・ひらがな・カタカナのいずれかで入力してください')
      end
      it '名前(カナ)(name_kana)が空である' do
        @worker.name_kana = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('名前(カナ)を入力してください')
      end
      it '名前(カナ)(name_kana)がカタカナではない' do
        @worker.name_kana = '漢字'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('名前(カナ)はカタカナで入力してください')
      end
      it '屋号(trade_name)が空である' do
        @worker.trade_name = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('屋号を入力してください')
      end
      it '電話番号(phone)が空である' do
        @worker.phone = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('電話番号を入力してください')
      end
      it '電話番号(phone)が半角数字ではない' do
        @worker.phone = 'abcdefghijk'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('電話番号は半角数字10〜11桁で入力してください')
      end
      it '電話番号(phone)が10桁未満' do
        @worker.phone = 123_456_789
        @worker.valid?
        expect(@worker.errors.full_messages).to include('電話番号は半角数字10〜11桁で入力してください')
      end
      it '電話番号(phone)が11桁を超える' do
        @worker.phone = 123_456_789_012
        @worker.valid?
        expect(@worker.errors.full_messages).to include('電話番号は半角数字10〜11桁で入力してください')
      end
      it 'メールアドレス(email)が空である' do
        @worker.email = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('メールアドレスを入力してください')
      end
      it 'メールアドレス(email)が@が含まれていない' do
        @worker.email = 'test.example'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('メールアドレスは不正な値です')
      end
      it 'メールアドレス(email)が登録済みのメールアドレスと重複している' do
        @worker.save
        another_worker = FactoryBot.build(:worker, email: @worker.email)
        another_worker.valid?
        expect(another_worker.errors.full_messages).to include('メールアドレスはすでに存在します')
      end
      it 'パスワード(password)が空である' do
        @worker.password = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('パスワードを入力してください')
      end
      it 'パスワード(password)が数字のみである' do
        @worker.password = 123_456
        @worker.valid?
        expect(@worker.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'パスワード(password)が英字のみである' do
        @worker.password = 'abcdef'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'パスワード(password)が6文字未満' do
        @worker.password = 12_345
        @worker.valid?
        expect(@worker.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'パスワード(password)とパスワード確認(password_confirmation)が不一致' do
        @worker.password_confirmation = 'abc123'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('パスワード(確認用)とパスワードの入力が一致しません')
      end
      it '居住地の郵便番号(address_zip)が空である' do
        @worker.address_zip = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('郵便番号を入力してください')
      end
      it '居住地の郵便番号(address_zip)が半角数字3桁-4桁ではない' do
        @worker.address_zip = '1234-567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('郵便番号は半角数字(ハイフン付き)で入力してください')
      end
      it '居住地の郵便番号(address_zip)にハイフンが含まれていない' do
        @worker.address_zip = '1234567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('郵便番号は半角数字(ハイフン付き)で入力してください')
      end
      it '居住地の住所(address)が空である' do
        @worker.address = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('住所を入力してください')
      end
      it '倉庫の郵便番号(warehouse_zip)が半角数字3桁-4桁でないと登録できない' do
        @worker.warehouse_zip = '1234-567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('郵便番号(倉庫)は半角数字(ハイフン付き)で入力してください')
      end
      it '倉庫の郵便番号(warehouse_zip)がハイフンなしでは登録できない' do
        @worker.warehouse_zip = '1234567'
        @worker.valid?
        expect(@worker.errors.full_messages).to include('郵便番号(倉庫)は半角数字(ハイフン付き)で入力してください')
      end
      it '倉庫の住所(warehouse)が空である' do
        @worker.warehouse = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('住所(倉庫)を入力してください')
      end
      it '倉庫情報(warehouse_info)が空である' do
        @worker.warehouse_info = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('倉庫情報を入力してください')
      end
      it 'イナバの直送コード(inaba)が空である' do
        @worker.inaba = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('イナバ直送コードを入力してください')
      end
      it 'ヨドの直送コード(yodo)が空である' do
        @worker.yodo = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('ヨド直送コードを入力してください')
      end
      it 'タクボの直送コード(takubo)が空である' do
        @worker.takubo = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('タクボ直送コードを入力してください')
      end
      it 'YKKAPの直送コード(ykkap)が空である' do
        @worker.ykkap = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('YKKAP直送コードを入力してください')
      end
      it '三協アルミの直送コード(sankyo)が空である' do
        @worker.sankyo = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('三協アルミ直送コードを入力してください')
      end
      it 'LIXILの直送コード(lixil)が空である' do
        @worker.lixil = nil
        @worker.valid?
        expect(@worker.errors.full_messages).to include('LIXIL直送コードを入力してください')
      end
    end
  end
end
