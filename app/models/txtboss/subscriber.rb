class Txtboss::Subscriber < User
  include Mongoid::Document

  field :company_name, type: String
  field :company_email, type: String
  field :company_phone, type: String

  has_many :contacts, :class_name => 'Txtboss::Contact'
  has_many :groups, :class_name => 'Txtboss::Group'

  def self._params(params)
    params.require(:data).permit(:company_name, :company_email, :company_phone, :password)
  end
end
