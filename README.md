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
- has_many :productnames
- has_many :purchases

## items テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| image       | text | null: false |
| name        | string | null: false |
| explanation | text | null: false |
| state       | integer | null: false |
| category    | integer | null: false |
| price       | integer | null: false |
| user        | references | null: false, foreign_key: true 
| burden      | integer | null: false |
| days        | integer | null: false |
| shippingorigin | integer | null: false |

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
