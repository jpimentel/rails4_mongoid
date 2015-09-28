class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :post, inverse_of: :comments

  field :body, type: String
  field :user_id, type: String

  def user
    User.find(user_id)
  end
end
