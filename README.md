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
| name        | text | null: false |
| explanation | text | null: false |
| state       | integer | null: false |
| category    | integer | null: false |
| price       | integer | null: false |
| exhibitor   | integer | null: false |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :purchase

## purchases テーブル

| Colnmu  | Type   | Options     |
| ------- |------- | ----------- |
| user    | references | null: false, foreign_key: true |
| items   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :delivery
- has_many :items
## deliverys テーブル

| Colnmu      | Type   | Options     |
| ----------- |------- | ----------- |
| postalcode  | string | null: false |
| prefectures | string | null: false |
| ciriy       | string | null: false |
| address     | string | null: false |
| place       | string | null: false |
| days        | string | null: false |
| number      | string | null: false |
| purchase    | references | null: false, foreign_key: true |

### Association
- belongs_to :purchase
