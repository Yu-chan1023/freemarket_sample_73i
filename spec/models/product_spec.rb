require 'rails_helper'
describe Product do
  describe '#create' do

    context '出品できる場合' do
      it "productとproduct_imageがある場合は保存できること" do
        expect(build(:product, product_images: [build(:product_image)])).to be_valid
      end
    end

    context '出品できない場合' do
      it "product_imageがない場合は保存できないこと" do
        product = build(:product)
        product.valid?
        expect(product.errors[:product_images]).to include("can't be blank")
      end

      it "nameがない場合は保存できないこと" do
        product = build(:product, name: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:name]).to include("can't be blank")
      end

      it "infomationがない場合は保存できないこと" do
        product = build(:product, infomation: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:infomation]).to include("can't be blank")
      end

      it "category_idがない場合は保存できないこと" do
        product = build(:product, category_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:category_id]).to include()
      end

      it "status_idがない場合は保存できないこと" do
        product = build(:product, status_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:status_id]).to include()
      end

      it "delivery_idがない場合は保存できないこと" do
        product = build(:product, delivery_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:delivery_id]).to include()

      end

      it "area_idがない場合は保存できないこと" do
        product = build(:product, area_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:area_id]).to include()
      end

      it "day_idがない場合は保存できないこと" do
        product = build(:product, day_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:day_id]).to include()
      end

      it "priceがない場合は保存できないこと" do
        product = build(:product, price: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:price]).to include()
      end

      it "priceが300以下の場合は保存できないこと" do
        product = build(:product, price: "299", product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:price]).to include()
      end

      it "priceが9,999,999以上の場合は保存できないこと" do
        product = build(:product, price: "10000000", product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:price]).to include()
      end

      it "user_idがない場合は保存できないこと" do
        product = build(:product, user_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:user_id]).to include()
      end
    
    end
  end



  describe '#edit' do

    context "保存できる場合" do
      it "productとproduct_imagesがある場合は保存できること" do
        expect(build(:product, product_images: [build(:product_image)])).to be_valid
      end

    end
    
    context "保存できない場合" do

      it "product_imagesがない場合は保存できないこと" do
        product = build(:product)
        product.valid?
        expect(product.errors[:product_images]).to include("can't be blank")
      end

      it "nameがない場合は保存できないこと" do

        product = build(:product, name: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:name]).to include("can't be blank")
      end

      it "infomationがない場合は保存できないこと" do
        product = build(:product, infomation: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:infomation]).to include("can't be blank")
      end

      it "category_idがない場合は保存できないこと" do
        product = build(:product, category_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:category_id]).to include()
      end

      it "status_idがない場合は保存できないこと" do
        product = build(:product, status_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:status_id]).to include()
      end

      it "delivery_idがない場合は保存できないこと" do
        product = build(:product, delivery_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:delivery_id]).to include()
      end

      it "area_idがない場合は保存できないこと" do
        product = build(:product, area_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:area_id]).to include()
      end

      it "day_idがない場合は保存できないこと" do
        product = build(:product, day_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:day_id]).to include()
      end

      it "priceがない場合は保存できないこと" do
        product = build(:product, price: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:price]).to include()
      end

      it "priceが300以下の場合は保存できないこと" do
        product = build(:product, price: "299", product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:price]).to include()
      end

      it "priceが9,999,999以上の場合は保存できないこと" do
        product = build(:product, price: "10000000", product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:price]).to include()
      end

      it "user_idがない場合は保存できないこと" do
        product = build(:product, user_id: nil, product_images: [build(:product_image)])
        product.valid?
        expect(product.errors[:user_id]).to include()
      end
      
    end
  end
end

