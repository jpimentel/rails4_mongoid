class User
  include Mongoid::Document

  has_many :posts

  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String

  index({ username: 1 } , { unique: true })

  def comments

    user_id = _id.to_s
    user_comments = []

    Post.where('comments.user_id' => user_id).each do |post|
      post.comments.each do |comment|
        if comment.user_id == user_id
          user_comments.append(comment)
        end
      end
    end

    user_comments
  end
end
