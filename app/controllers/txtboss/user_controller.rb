class Txtboss::UserController < ApplicationController

  def index
    @subscribers = Txtboss::Subscriber.all
  end
end
