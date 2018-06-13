# Awesome-name
  prtable-prot


# Overview
  prtable-prot db design


## contacts_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|enquiry      |integer    |null: false|
|company_name |string     |null: false, index: true|
|department   |string     |null: false|
|user_name    |string     |null: false|
|email        |string     |null: false, unique: true|
|tel_number   |integer    |null: false, unique: true|
|campany_url  |text       |
|task         |boolean    |null: false|
|remarks      |text       |

### Association
- has_many : users


## users_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|email        |string     |null: false, unique: true|
|password     |string     |null: false|
|name         |string     |null: false|
|overview     |text       |null: false|
|representative|string    |null: false|
|foundation   |date       |null: false|
|address      |text       |null: false|
|vision       |text       |null: false|
|contact      |references |foreign_key: true|

### Association
- belongs_to :contact
- has_many :stories
- has_many :timelines


## stories_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|title        |string     |null: false|
|sub-title    |string     |null: false|
|user         |references |foreign_key: true|

### Association
- has_many   :images
- has_many   :tags
- belongs_to :user


## images_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|image        |string     |null: false|
|story        |references |foreign_key: true|

### Association
- belongs_to :story
- has_one  :article


## article_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|headline     |string     |null: false|
|sub_title    |string     |null: false|
|body         |text       |null: false|
|image        |references |foreign_key: true|

### Association
- belongs_to :image


## tags_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|name         |string     |
|story        |references |foreign_key: true|
|taggings_count|integer   |null: false|

### Association
-belongs_to :story


## timelines_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|month        |date       |
|title        |string     |
|date         |date       |
|comment      |text       |
|user         |references |foreign_key: true|

### Association
- belongs_to :user
