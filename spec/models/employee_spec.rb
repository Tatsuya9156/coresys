require 'rails_helper'

RSpec.describe Employee, type: :model do
  before do
    @employee = FactoryBot.build(:employee)
  end

  describe '社員新規登録' do
    context '新規登録ができるとき' do
      it '社員番号(employee_number)、名前(漢字)(name)、名前(カナ)(name_kana)、役職(position)、電話番号(phone)、管理者権限(admin)、メールアドレス(email)、パスワード(password)、パスワード確認(password_confirmation)が存在すれば登録できる' do
        expect(@employee).to be_valid
      end
    end

    context '新規登録ができないとき' do
      it '社員番号(employee_number)が空だと登録できない' do
        @employee.employee_number = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Employee number can't be blank")
      end
      it '社員番号(employee_number)が半角数字のみでないと登録できない' do
        @employee.employee_number = 'abcd'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Employee number is invalid')
      end
      it '社員番号(employee_number)が4桁未満だと登録できない' do
        @employee.employee_number = 123
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Employee number is invalid')
      end
      it '社員番号(employee_number)が4桁を超えると登録できない' do
        @employee.employee_number = 12_345
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Employee number is invalid')
      end
      it '社員番号(employee_number)が登録済みの社員番号と重複していると登録できない' do
        @employee.save
        another_employee = FactoryBot.build(:employee, employee_number: @employee.employee_number)
        another_employee.valid?
        expect(another_employee.errors.full_messages).to include('Employee number has already been taken')
      end
      it '名前(漢字)(name)が空だと登録できない' do
        @employee.name = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Name can't be blank")
      end
      it '名前(漢字)(name)が漢字・ひらがな・カタカナでないと登録できない' do
        @employee.name = 'abc'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Name is invalid')
      end
      it '名前(カナ)(name_kana)が空だと登録できない' do
        @employee.name_kana = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Name kana can't be blank")
      end
      it '名前(カナ)(name_kana)がカタカナでないと登録できない' do
        @employee.name_kana = '漢字'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Name kana is invalid')
      end
      it '役職(position)が空だと登録できない' do
        @employee.position = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Position can't be blank")
      end
      it '電話番号(phone)が空だと登録できない' do
        @employee.phone = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Phone can't be blank")
      end
      it '電話番号(phone)が半角数字でないと登録できない' do
        @employee.phone = 'abcdefghijk'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Phone is invalid')
      end
      it '電話番号(phone)が10桁未満だと登録できない' do
        @employee.phone = 123_456_789
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Phone is invalid')
      end
      it '電話番号(phone)が11桁を超えると登録できない' do
        @employee.phone = 123_456_789_012
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Phone is invalid')
      end
      it '管理者権限(admin)が空だと登録できない' do
        @employee.admin = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Admin is not included in the list')
      end
      it 'メールアドレス(email)が空だと登録できない' do
        @employee.email = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Email can't be blank")
      end
      it 'メールアドレス(email)が@が含まれないと登録できない' do
        @employee.email = 'test.example'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Email is invalid')
      end
      it 'メールアドレス(email)が登録済みのメールアドレスと重複していると登録できない' do
        @employee.save
        another_employee = FactoryBot.build(:employee, email: @employee.email)
        another_employee.valid?
        expect(another_employee.errors.full_messages).to include('Email has already been taken')
      end
      it 'パスワード(password)が空だと登録できない' do
        @employee.password = nil
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Password can't be blank")
      end
      it 'パスワード(password)が数字のみだと登録できない' do
        @employee.password = 123_456
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワード(password)が英字のみだと登録できない' do
        @employee.password = 'abcdef'
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワード(password)が6文字未満だと登録できない' do
        @employee.password = 12_345
        @employee.valid?
        expect(@employee.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワード(password)とパスワード確認(password_confirmation)が不一致だと登録できない' do
        @employee.password_confirmation = 'abc123'
        @employee.valid?
        expect(@employee.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
