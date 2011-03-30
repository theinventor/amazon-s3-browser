class ApplicationController < ActionController::Base
  protect_from_forgery

    require "pp"

  layout 'default'

  helper :all # include all helpers, all the time

  before_filter :make_connection

  def make_connection
    S3File.init
  end


end
