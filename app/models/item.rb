class Item < ApplicationRecord
     has_many :purchases
     belongs_to :user
     has_one_attached :image
     validate :image_presence
    
     extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to_active_hash :category
     belongs_to_active_hash :state
     belongs_to_active_hash :day
     belongs_to_active_hash :burden
     belongs_to_active_hash :shippingorigin

    
     validates :category_id, numericality: { other_than: 1 }
     validates :state_id, numericality: { other_than: 1 }
     validates :burden_id, numericality: { other_than: 1 }
     validates :shippingorigin_id, numericality: { other_than: 1 }
     validates :day_id, numericality: { other_than: 1 }

     with_options presence: true do
         validates :name
         validates :image
         validates :explanation
         validates :category_id
         validates :state_id
         validates :burden_id
         validates :shippingorigin_id
         validates :day_id
         validates :price, :numericality => { :greater_than_or_equal_to => 300 }
         validates :price, :numericality => { :less_than_or_equal_to => 9999999 }
     end

     def image_presence
         self.image.attached?
     end
 end
