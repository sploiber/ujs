class PeopleController < ApplicationController
  def index
    @people = params[:admin] ? Person.where(:admin => true) : Person.all
    respond_to do |format|
      format.html # index.html.erb
      format.js # index.js.erb
    end
  end
  def show
    @person = Person.find(params[:id])
  end
end
