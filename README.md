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
|email|string|null: false, foreign_key: true|
|password|string|null: false, foreign_key: true|

### Association
- has_many :groups
- has_many :chats

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|groupname|integer|null: false, foreign_key: true|
|user|integer|null: false, foreign_key: true|

### Association
- has_many :users
- belong_to :chat


## chatsテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null: false, foreign_key: true|
|text|text|null: false, foreign_key: true|

### Association
- belongs_to :group
- has_many :users