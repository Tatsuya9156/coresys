require 'rails_helper'

RSpec.describe Employee, type: :model do
  before do
    @employee = FactoryBot.build(:employee)
  end

  describe '社員(Employee)新規登録に関するテスト' do
    context '新規登録が有効' do
      it '社員番号(employee_number)、名前(漢字)(name)、名前(カナ)(name_kana)、所属(section)、役職(position)、電話番号(phone)、
          管理者権限(admin)、在籍状況(enrolled)、メールアドレス(email)、パスワード(password)、パスワード確認(password_confirmation)が存在する' do
        expect(@employee).to be_valid
      end
    end

    context '新規登録が無効' do
      it '社員番号(employee_number)が空である' do
        @employee.employee_number = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('社員番号を入力してください')
      end
      it '社員番号(employee_number)が半角数字のみではない' do
        @employee.employee_number = 'abcd'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('社員番号は半角数字4桁で入力してください')
      end
      it '社員番号(employee_number)が4桁未満' do
        @employee.employee_number = 123
        @employee.valid?
        expect(@employee.errors.full_messages).to include('社員番号は半角数字4桁で入力してください')
      end
      it '社員番号(employee_number)が4桁を超える' do
        @employee.employee_number = 12345
        @employee.valid?
        expect(@employee.errors.full_messages).to include('社員番号は半角数字4桁で入力してください')
      end
      it '社員番号(employee_number)が登録済みの社員番号と重複している' do
        @employee.save
        another_employee = FactoryBot.build(:employee, employee_number: @employee.employee_number)
        another_employee.valid?
        expect(another_employee.errors.full_messages).to include('社員番号はすでに存在します')
      end
      it '名前(漢字)(name)が空である' do
        @employee.name = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('名前を入力してください')
      end
      it '名前(漢字)(name)が漢字・ひらがな・カタカナではない' do
        @employee.name = 'abc'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('名前は漢字・ひらがな・カタカナのいずれかで入力してください')
      end
      it '名前(カナ)(name_kana)が空である' do
        @employee.name_kana = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('名前(カナ)を入力してください')
      end
      it '名前(カナ)(name_kana)がカタカナではない' do
        @employee.name_kana = '漢字'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('名前(カナ)はカタカナで入力してください')
      end
      it '所属(section)が空である' do
        @employee.section = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('所属を入力してください')
      end
      it '役職(position)が空である' do
        @employee.position = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('役職を入力してください')
      end
      it '電話番号(phone)が空である' do
        @employee.phone = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('電話番号を入力してください')
      end
      it '電話番号(phone)が半角数字ではない' do
        @employee.phone = 'abcdefghijk'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('電話番号は半角数字10〜11桁で入力してください')
      end
      it '電話番号(phone)が10桁未満' do
        @employee.phone = 123456789
        @employee.valid?
        expect(@employee.errors.full_messages).to include('電話番号は半角数字10〜11桁で入力してください')
      end
      it '電話番号(phone)が11桁を超えると' do
        @employee.phone = 123456789012
        @employee.valid?
        expect(@employee.errors.full_messages).to include('電話番号は半角数字10〜11桁で入力してください')
      end
      it '管理者権限(admin)が空である' do
        @employee.admin = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('管理者権限を選択してください')
      end
      it '在籍状況(enrolled)が空である' do
        @employee.enrolled = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('在籍状況を選択してください')
      end
      it 'メールアドレス(email)が空である' do
        @employee.email = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('メールアドレスを入力してください')
      end
      it 'メールアドレス(email)に@が含まれていない' do
        @employee.email = 'test.example'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('メールアドレスは不正な値です')
      end
      it 'メールアドレス(email)が登録済みのメールアドレスと重複している' do
        @employee.save
        another_employee = FactoryBot.build(:employee, email: @employee.email)
        another_employee.valid?
        expect(another_employee.errors.full_messages).to include('メールアドレスはすでに存在します')
      end
      it 'パスワード(password)が空である' do
        @employee.password = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('パスワードを入力してください')
      end
      it 'パスワード(password)が数字のみである' do
        @employee.password = 123456
        @employee.valid?
        expect(@employee.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'パスワード(password)が英字のみである' do
        @employee.password = 'abcdef'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'パスワード(password)が6文字未満' do
        @employee.password = 12345
        @employee.valid?
        expect(@employee.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'パスワード(password)とパスワード確認(password_confirmation)が不一致' do
        @employee.password_confirmation = 'abc123'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('パスワード(確認用)とパスワードの入力が一致しません')
      end
    end
  end
end
