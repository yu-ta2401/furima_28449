FactoryBot.define do
  factory :address_purchase do
    postalcode    {"123-4567"}
    prefecture_id  {8}
    city           {"東京"}
    address        {"1-1"}
    phonenumber           {"09089899009"}
    token          {"tok_12as34cv"}
  end
end