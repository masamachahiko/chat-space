## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has_many :groups, through: groups_users
- has_many :messages
  has_many :groups_users

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users, through: group_users
  has_many :messages
  has_many :groups_users


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|
|body|text|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|foreign_key: true|
### Association
- belongs_to :user