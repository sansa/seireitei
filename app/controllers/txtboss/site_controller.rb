require 'utils/aux'
class Txtboss::SiteController < ApplicationController

  def index
    @subscribers = Txtboss::Subscriber.all
    render 'txtboss/index'
  end

  def create
    klass = Utils::Aux.get_class('Txtboss',params[:obj])
    @data = klass.new klass._params(params)

    if @data.save
      render json: @data
    else
      render json: @data.errors, status: :unprocessable_entity
    end
  end

  def destroy
    klass = Utils::Aux.get_class('Txtboss',params[:obj])
    data = klass.find(params[:id])
    data.destroy
    head :no_content
  end

end