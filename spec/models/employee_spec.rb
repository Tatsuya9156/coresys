require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'ユーザー新規登録' do
    context '新規登録ができるとき' do
      it 'nicknameとemail、passwordとpassword_confirmation、last_nameとfirst_name、last_name_kanaとfirst_name_kana、birthが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録ができないとき' do

    end
  end
end

