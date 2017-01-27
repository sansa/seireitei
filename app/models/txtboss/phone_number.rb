class Txtboss::PhoneNumber
  include Mongoid::Document

  field :number, type: String
  field :country_code, type: String

  embedded_in :contact, :class_name => 'Txtboss::Contact'

  def owner
    self.contact.name
  end
end
