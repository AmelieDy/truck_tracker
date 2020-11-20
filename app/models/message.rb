class Message
  include ActiveModel::Model
  attr_accessor :email
  validates :email, presence: true
  validates :email, format: /\A[^@]+@[^@]+\z/
end
