# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|fist_name_zenkaku|string|null: false|
|last_name_zenkaku|string|null: false|
|first_name_kana|string|null: false
|last_name_kana|string|null: false|
|birthday|string|null: false|
|email|string|null: false unique: true|
|password|string|null: false|

### Association
- has_many :items
- has_many :likes
- has_many :comments
- has_one : payment
- has_one : address

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|status|string|null: false|
|image|string|null: false|
|body|string|null: false|
|deliver_fee|string|null: false|
|how_to_deliver|string|null: false|
|region|string|null: false|
|price|string|null: false|
|user_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :category
- has_many :images
- has_many :comments
- has_many :likes

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|item_id|refelence|null: false, foreign_key: true|

### Association
- has_many :items
- belongs_to :brand

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|item_id|reference|
### Association
- has_many: categories
- has_many: items

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|item_id|reference|
|body|text|

### Association
- has_many :users
- has_many :messages

## sub_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|reference|
|image|text|

### Association
- belongs_to: item

## paymentsテーブル
|column|Type|Options|
|-------|---------|-----------|
|user_id|reference|
|card_number|integer|null: false unique: true|
|year|integer|null: false|
|month|integer|null: false|
|security_number|integer|null: false|

### Association
- has_one :user

## addressテーブル
|column|Type|Option|
|----------|------|---------|
|user_id|reference|
|build_name|string|
|address_banchi|stiring|null: false|
|post_number|integer|null: false|
|phone-number|integer|
|prefectues|string|null: false|
|city|string|null: false|

### Association
- has_one: user

## Likesテーブル
|column|Type|Option|
|----------|------|---------|
|user_id|reference|
|item_id|reference|

### Association
- belongs_to: user
- belongs_to: item