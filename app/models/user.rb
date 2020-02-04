class User < ActiveRecord::Base

  has_secure_password
  before_save { |user| user.email=user.email.downcase }
  # before_save :create_session_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def self.create_user!(user_hash)
    #validats user_hash[:uer_id], :uniqueness,{:message => "Sorry, this user-id is taken. Try again."}
    user_hash[:session_token] = SecureRandom.base64
    create!(user_hash)
  end

# private
#   def create_session_token
#     self.session_token= SecureRandom.urlsafe_base64
#   end

end