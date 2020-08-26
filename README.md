# テーブル設計

## users テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| nickname    | string | nul]: false |
| firstname   | string | null: false |
| lastname    | string | null: false |
| firstname_kana   | string | null: false |
| lastname_kana    | string | null: false |
| birthday       | date | null: false |
| email       | string | null: false |
| password    | string | null: false |

### Association
- has_many :items
- has_many :purchases

## items テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| image       | text | null: false |
| name        | string | null: false |
| explanation | text | null: false |
| state_id       | integer | null: false |
| category_id    | integer | null: false |
| price       | integer | null: false |
| user        | references | null: false, foreign_key: true 
| burden_id      | integer | null: false |
| day_id        | integer | null: false |
| shippingorigin_id | integer | null: false |

### Association
- belongs_to :user
- has_one :purchase

## purchases テーブル

| Colnmu  | Type   | Options     |
| ------- |------- | ----------- |
| user    | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :streetaddress
- belongs_to :item

## streetaddresss テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| postalcode  | string | null: false |
| prefectures | integer | null: false |
| city        | string | null: false |
| address     | string | null: false |
| place       | string | null: false |
| number      | string |
| phonenumber | string | null: false |
| purchase    | references | null: false, foreign_key: true 

### Association
- belongs_to :purchase
