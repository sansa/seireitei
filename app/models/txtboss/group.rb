class Txtboss::Group
  include Mongoid::Document

  field :name, type: String

  belongs_to :subscriber, :class_name => 'Txtboss::Subscriber'
  has_and_belongs_to_many :contacts, :class_name => 'Txtboss::Contact'
end
