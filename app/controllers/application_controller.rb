class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_meta_defaults

  helper_method :categories_to_show
  helper :all

  def set_meta_defaults
    @description  = "Short descriptions and links for novice to experienced web developers"
    @keywords     = "ruby, ruby on rails, rails, gems, javascript, css, links, programming, agile, testing"
    @default_title= "Like a Bouse"
    @title        = @default_title

  end

  private
  def categories_to_show
    @categories       ||= Category.to_show
  end
end
