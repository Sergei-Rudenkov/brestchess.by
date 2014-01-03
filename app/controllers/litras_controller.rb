class LitrasController < ApplicationController
  # GET /litras
  # GET /litras.json
  def index
    @litras = Litra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @litras }
    end
  end

  # GET /litras/1
  # GET /litras/1.json
  def show
    @litra = Litra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @litra }
    end
  end

  # GET /litras/new
  # GET /litras/new.json
  def new
  if signed_in?
    @litra = Litra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @litra }
    end
  end
end
  # GET /litras/1/edit
  def edit
  if signed_in?
    @litra = Litra.find(params[:id])
  end
end
  # POST /litras
  # POST /litras.json
  def create
  if signed_in?
    @litra = Litra.new(params[:litra])

    respond_to do |format|
      if @litra.save
        format.html { redirect_to @litra, notice: 'Litra was successfully created.' }
        format.json { render json: @litra, status: :created, location: @litra }
      else
        format.html { render action: "new" }
        format.json { render json: @litra.errors, status: :unprocessable_entity }
      end
    end
  end
end
  # PUT /litras/1
  # PUT /litras/1.json
  def update
  if signed_in?
    @litra = Litra.find(params[:id])

    respond_to do |format|
      if @litra.update_attributes(params[:litra])
        format.html { redirect_to @litra, notice: 'Litra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @litra.errors, status: :unprocessable_entity }
      end
    end
  end
end
  # DELETE /litras/1
  # DELETE /litras/1.json
  def destroy
  if signed_in?
    @litra = Litra.find(params[:id])
    @litra.destroy

    respond_to do |format|
      format.html { redirect_to litras_url }
      format.json { head :no_content }
    end
  end
end
end
