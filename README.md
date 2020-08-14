# テーブル設計

## users テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| firstname   | string | null: false |
| lastname    | string | null: false |
| firstname_kana   | string | null: false |
| lastname_kana    | string | null: false |
| birthday       | string | null: false |
| email       | string | null: false |
| password    | string | null: false |

### Association
- has_many :productname
- has_many :purchase

## items テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| image       | string | null: false |
| name        | string | null: false |
| explanation | string | null: false |
| state       | string | null: false |
| category    | string | null: false |
| price       | string | null: false |
| exhibitor   | string | null: false |
| user_id     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :delivery
- belongs_to :item

## purchase テーブル

| Colnmu  | Type   | Options     |
| ------- |------- | ----------- |
| user_id | references | null: false, foreign_key: true |
| items_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :delivery place
- has_many :items
## delivery place テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| deliveryfee | string | null: false |
| place       | string | null: false |
| days         | string | null: false |
| purchase_id | string | null: false |

### Association
- belongs_to :purchase
