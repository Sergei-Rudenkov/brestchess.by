class HomesController < ApplicationController
  # GET /homes
  # GET /homes.json
  def index
    @homes = Home.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes }
    end
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
  if signed_in?
    @home = Home.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home }
      end
    end
  end



  # GET /homes/1/edit
  def edit
  if signed_in?
    @home = Home.find(params[:id])
    end
  end



  # PUT /homes/1
  # PUT /homes/1.json
  def update
  if signed_in?
    @home = Home.find(params[:id])

    respond_to do |format|
      if @home.update_attributes(params[:home])
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home.errors, status: :unprocessable_entity }
        end
      end
    end
  end


end
