# テーブル設計

## users テーブル

| Colnmu   | Type   | Options     |
| -------- |------- | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :productname
- has_many :purchase

## items テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| roductname  | string | null: false |
| category    | string | null: false |
| price       | string | null: false |
| exhibitor   | string | null: false |
| user_id     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :delivery

## purchase テーブル

| Colnmu  | Type   | Options     |
| ------- |------- | ----------- |
| user_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :delivery place

## delivery place テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| purchase_id | string | null: false |
| items_id | references | null: false, foreign_key: true |


### Association
- belongs_to :purchase
- belongs_to :item
