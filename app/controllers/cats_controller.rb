class CatsController < ApplicationController
  before_filter :find_person
  before_filter :find_cat, :only => [:show, :destroy]
  def new
    @cat = @person.cats.build
    @submit_label = "Create"
    respond_to do |format|
      format.html
      format.js { }
    end
  end
  def destroy
    @cat.destroy
    flash[:notice] = "Cat has been deleted."
    redirect_to @person
  end
  def create
    @cat = @person.cats.build(params[:cat])
    if @cat.save
      flash[:notice] = "Cat has been created."
      redirect_to @person
    else
      flash[:alert] = "Cat has not been created."
      render :action => "new"
    end
  end
  def show
  end
private
  def find_person
    @person = Person.find(params[:person_id])
  end
  def find_cat
    @cat = @person.cats.find(params[:id])
  end
end
