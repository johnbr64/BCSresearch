class AuthorsController < ApplicationController
  def index
    @authors = Author.order(:L_Name)
     respond_to do |format|
       format.html
     end
  end
end
