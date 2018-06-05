# Awesome-name
  prtable-prot


# Overview
  prtable-prot db design


## contacts_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|enquiry      |boolean    |null: false|
|company_name |string     |null: false, index: true|
|department   |string     |null: false|
|user_name    |string     |null: false|
|email        |string     |null: false, unique: true|
|tel_number   |integer    |null: false, unique: true|
|campany_url  |text       |
|task         |boolean    |null: false|
|remarks      |text       |
|company      |references |foreign_key: true|

### Association
- has_one :company


## users_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|email        |string     |null: false, unique: true|
|password     |string     |null: false|
|company      |references |foreign_key: true|

### Association
- belongs_to :company


## stories_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|title        |string     |null: false|
|sub-title    |string     |null: false|
|company      |references |foreign_key: true|

### Association
- has_many   :images
- has_many   :tags
- belongs_to :company


## images_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|headline     |string     |null: false|
|image        |string     |null: false|
|sub_title    |string     |null: false|
|story        |references |foreign_key: true|

### Association
- belongs_to :story
- has_one  :content


## contents_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|body         |text       |null: false|
|image        |references |foreign_key: true|

### Association
- belongs_to :image


## tags_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|topic        |string     |
|story        |references |foreign_key: true|

### Association
-belongs_to :story


## timelines_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|month        |date       |
|title        |string     |
|date         |date       |
|comment      |text       |
|company      |references |foreign_key: true|

### Association
- belongs_to :campany


## companies_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|overview     |text       |null: false|
|representative|string    |null: false|
|foundation   |date       |null: false|
|address      |text       |null: false|
|vision       |text       |null: false|
|contact      |references |foreign_key: true|

### Association
- has_many :users
- has_many :contacts
- has_many :stories
- has_many :timelines
