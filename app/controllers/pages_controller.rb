class PagesController < ApplicationController
  def home
    @chefs = Chef.limit(4)
  end

  def chefit
    @chefs = Chef.all.sample(3)
  end
end
