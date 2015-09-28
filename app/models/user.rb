class User
  include Mongoid::Document

  has_many :posts

  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String

  index({ username: 1 } , { unique: true })

  def comments
    []
  end
end
