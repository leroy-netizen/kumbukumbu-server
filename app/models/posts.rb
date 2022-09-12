class Posts < ActiveRecord::Base
has_many :comments
has_many :users, through: :comments
end

# many users can comment on a single post
