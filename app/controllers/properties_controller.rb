class PropertiesController < ApplicationController
  before_filter :set_current_user

  def new
    # default: render 'new' template
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @property = Property.find(id)
  end

  def index
    @properties = Property.all
  end

end
