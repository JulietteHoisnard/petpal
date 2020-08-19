class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @pet = Pet.all
    @pet = Pet.new
  end
end
