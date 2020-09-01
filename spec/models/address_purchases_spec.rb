require 'rails_helper'

RSpec.describe "AddressPurchases", type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @address_purchase = FactoryBot.build(:address_purchase)
  end


  describe '商品購入機能' do
    context '商品購入がうまくいく時' do
      it "記述に漏れがなければ購入できる" do
        expect(@address_purchase).to be_valid
      end
    end

    context '商品購入がうまくいかない時' do
      it "tokenがないと購入できない" do 
        @address_purchase.token = nil
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("Token can't be blank")
      end
      it "郵便番号がないと購入できない" do
        @address_purchase.postalcode = nil
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("Postalcode can't be blank")
      end
      it "郵便番号にハイフン（-）がないと購入できない" do
        @address_purchase.postalcode = "1234567"
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("Postalcode is invalid")
      end
      it "都道府県の情報がないと購入できない" do
        @address_purchase.prefecture_id = ""
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "市区町村の情報がないと購入できない" do
        @address_purchase.city = ""
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("City can't be blank")
      end
      it "住所の情報がないと購入できない" do
        @address_purchase.address = ""
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("Address can't be blank")
      end
      it "電話番号がないと購入できない" do
        @address_purchase.phonenumber= ""
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include("Phonenumber can't be blank")
      end
      it "電話番号が11桁以内じゃないと購入できない" do
        @address_purchase.phonenumber = "09067891234"
        @address_purchase.valid?
        expect(@address_purchase.errors.full_messages).to include
      end
    end
  end
end
