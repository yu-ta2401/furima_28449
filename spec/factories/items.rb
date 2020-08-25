FactoryBot.define do
  factory :item do
    name {'あああ'}
    price {'500'}
    explanation {'ああああ'}
    category_id {3}
    state_id {3}
    burden_id {3}
    shippingorigin_id {3}
    day_id {3}
    user_id {2}
    association :user
  end
end
