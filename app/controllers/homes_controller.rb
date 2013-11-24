class HomesController < ApplicationController

  def index
    @homes = Home.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes }
    end
  end

  def edit
  if signed_in?
    @home = Home.find(params[:id])
    end
  end

  def update
  if signed_in?
    @home = Home.find(params[:id])

    respond_to do |format|
      if @home.update_attributes(params[:home])
        format.html { redirect_to root_path }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home.errors, status: :unprocessable_entity }
        end
      end
    end
  end


end
