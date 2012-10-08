class PeopleController < ApplicationController
  def index
    @people = params[:admin] ? Person.where(:admin => true) : Person.all
    respond_to do |format|
      format.html # index.html.erb
      format.js # index.js.erb
    end
  end
end
