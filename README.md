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
- has_many :companies


## stories_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|title        |string     |null: false|
|sub-title    |string     |null: false|
|company      |references |foreign_key: true|

### Association
- belongs_to :image
- belongs_to :tag


## images_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|headline     |string     |null: false|
|image        |string     |null: false|
|sub_title    |string     |null: false|
|story        |references |foreign_key: true|

### Association
- has_many :stories
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
-belongs_to :stories


## timelines_table
|Column       |Type       |Options|
|-------------|-----------|-------|
|month        |date       |
|title        |string     |
|date         |date       |
|comment      |text       |
|company      |references |foreign_key: true|

### Association
- has_many :companies


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
- belongs_to :user
- belongs_to :contact
- belongs_to :story
- belongs_to :timeline
