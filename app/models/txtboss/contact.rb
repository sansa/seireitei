class Txtboss::Contact
  include Mongoid::Document

  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String

  belongs_to :subscriber, :class_name => 'Txtboss::Subscriber'
  embeds_many :phone_numbers, :class_name => 'Txtboss::PhoneNumber'
  has_and_belongs_to_many :groups, :class_name => 'Txtboss::Group'

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}"
  end
end
