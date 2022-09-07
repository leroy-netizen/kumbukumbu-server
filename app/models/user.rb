class User < ActiveRecord::Base
    has_many :posts
    has_many :comments, through: :posts
end

# a user can make many posts
# a user can comment on many posts