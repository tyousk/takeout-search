require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '口コミ投稿' do
    context '投稿がうまくいくとき' do
      it '全ての値が入力されていれば登録できる' do
        expect(@post).to be_valid
      end
    end

    context '投稿がうまくいかないとき' do
      it '「料理名」が空だと登録できない' do
        @post.cooking_name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Cooking name can't be blank")
      end
      it '「料理の感想」が空だと登録できない' do
        @post.impression = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Impression can't be blank")
      end
      it '「料理のジャンル」が空だと登録できない' do
        @post.category_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include('Category must be other than 1')
      end
      it '「店名」が空だと登録できない' do
        @post.store_name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Store name can't be blank")
      end
      it '「開店時間」が空だと登録できない' do
        @post.opening = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Opening can't be blank")
      end
      it '「閉店時間」が空だと登録できない' do
        @post.closing = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Closing can't be blank")
      end
      it '「都道府県名」が空だと登録できない' do
        @post.prefecture_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include('Prefecture must be other than 1')
      end
      it '「市町村」が空だと登録できない' do
        @post.city = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("City can't be blank")
      end
      it '「番地」が空だと登録できない' do
        @post.address = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Address can't be blank")
      end
      it 'ユーザーが紐付いていなければ出品できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
