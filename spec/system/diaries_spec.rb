require 'rails_helper'

describe 'タスク管理', type: :system do 
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
      FactoryBot.create(:diary, name:'最初のタスク', user: user_a)
    end

  context 'ユーザーAがログインしているとき' do
      before do
        # UserA logged in
      end

      it 'ユーザーAが作成したタスク表示' do
        # 上記と同じ
      end
    end
  end
end
