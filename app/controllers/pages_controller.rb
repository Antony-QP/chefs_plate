class PagesController < ApplicationController
  def home
    @chefs = Chef.limit(4)
  end
end
