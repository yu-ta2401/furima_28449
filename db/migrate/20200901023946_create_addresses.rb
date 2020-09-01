class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string     :postalcode    ,default: ""  ,null: false
      t.integer    :prefecture_id                ,null: false
      t.string     :city          ,default: ""  ,null: false
      t.string     :address       ,default: ""  ,null: false
      t.string     :place         ,default: ""
      t.string     :phonenumber                        ,null: false
      t.references :purchase                     ,null: false, foreign_key: true
      t.references :item                     ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
