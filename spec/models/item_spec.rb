require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    before do
      @item = FactoryBot.build(:item)
      #@item.image = fixture_file_upload('spec/fixtures/image.jpg')
    end

    context "登録できること" do
    
      it "name,image,price,explanation,category_id,state_id,burden_id,shippingorigin_id,day_idの値が存在すれば登録できること" do
        expect(@item).to be_valid
      end
      it "priceが300〜9999999なら登録できること" do
        @item.price = 500
        expect(@item).to be_valid
      end

    end 
    
    context "登録できないこと" do
   
      it "imageが空では登録できないこと" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it "nameが空では登録できないこと" do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it "priceが空では登録できないこと" do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank", "Price is not a number")
      end

      it "explanationが空では登録できないこと" do
        @item.explanation = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end

      it "category_idが空では登録できないこと" do
        @item.category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Category is not a number", "Category can't be blank")
      end

      it "state_idが空では登録できないこと" do
        @item.state_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("State is not a number", "State can't be blank")
      end

      it "burden_idが空では登録できないこと" do
        @item.burden_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Burden is not a number", "Burden can't be blank")
      end
      it "shippingorigin_idが空では登録できないこと" do
        @item.shippingorigin_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shippingorigin is not a number", "Shippingorigin can't be blank")
      end
      it "day_idが空では登録できないこと" do
        @item.day_id = nil 
        @item.valid?
        expect(@item.errors.full_messages).to include("Day is not a number", "Day can't be blank")
      end
      it "priceが299だと登録できないこと" do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it "priceが10000000だと登録できないこと" do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end

      it "genre_idが1だと登録できないこと" do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include( "Category must be other than 1")
      end
      it "condition_idが1だと登録できないこと" do
        @item.state_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("State must be other than 1")
      end
      it "burden_fee_idが1だと登録できないこと" do
        @item.burden_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Burden must be other than 1")
      end
      it "shippingorigin_idが1だと登録できないこと" do
        @item.shippingorigin_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Shippingorigin must be other than 1")
      end
      it "day_idが1だと登録できないこと" do
        @item.day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Day must be other than 1")
      end

    end
  end
end