class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :post, inverse_of: :comments
  belongs_to :user

  field :body, type: String
end
