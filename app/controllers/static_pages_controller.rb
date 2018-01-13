class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  	  @user_query = UserQuery.new
  end

end
