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
- has_many :groups, through: groups_users
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false, foreign_key: true|
|member|string|null: false, foreign_key: true|

### Association
- has_many :users, through: group_users


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null: false, foreign_key: true|
|body|text|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- has_many :users