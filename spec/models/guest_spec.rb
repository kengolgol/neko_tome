require 'rails_helper'

RSpec.describe Guest, type: :model do
  before do
    @guest = FactoryBot.build(:guest)
  end

  context '新規ゲスト登録ができる' do
    # 全ての項目に正しく情報が入力されていれば新規ゲスト登録ができる
    # buildingに値が空でも登録できる
    # introductionの値が空でも登録できる
    # requestの値が空でも登録できる
  end

  context '新規ゲスト登録ができない' do
    # nicknameの値が空では登録できない
    # last_nameの値が空では登録できない
    # first_nameの値が空では登録できない
    # emailの値が空では登録できない
    # emailに＠が含まれていないと登録できない
    # emailの値がすでに登録されているものでは登録できない
    # passwordの値が空では登録できない
    # passwordの値は半角英字のみでは登録できない
    # passwordの値は半角数字のみでは登録できない
    # passwordとconfirmation_passwordの値が一致していなければ登録できない
    # sex_idが"1"のままでは登録できない
    # personality_idが"1"のままでは登録できない
    # postal_codeの値が空では登録できない
    # postal_codeに"-"(ハイフン)が使われていなければ登録できない
    # prefecture_idが"1"のままでは登録できない
    # job_idが"1"のままでは登録できない
    # 
  end
end
