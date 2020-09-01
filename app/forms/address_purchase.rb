class AddressPurchase

  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postalcode, :prefecture_id, :city, :address, :place, :phonenumber, :token

  with_options presence: true do
    validates :postalcode,  format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :city
    validates :address
    validates :phonenumber,         format: { with: /\A\d{10,11}\z/ }
    validates :token
    validates :prefecture_id, numericality: { other_than: 1 }

    
  end

  def save
    Address.create!(postalcode: postalcode, prefecture_id: prefecture_id, city: city, address: address, place: place, phonenumber: phonenumber, user_id: user_id, item_id: item_id)
    Purchase.create!(item_id: item_id, user_id: user_id)
  end
end