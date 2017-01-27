class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :first_name,      type: String
  field :last_name,       type: String
  field :middle_name,     type: String
  field :email,           type: String
  field :password_digest, type: String

  has_secure_password

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}"
  end
end
