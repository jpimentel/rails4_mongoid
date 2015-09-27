class User
  include Mongoid::Document

  has_many :posts
  has_many :comments

  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String
end
