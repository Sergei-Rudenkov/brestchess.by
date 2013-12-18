class TourtablesController < ApplicationController
  # GET /tourtables
  # GET /tourtables.json
  def index
    @tourtables = Tourtable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tourtables }
    end
  end

  # GET /tourtables/1
  # GET /tourtables/1.json
  def show
  if signed_in?
    @tourtable = Tourtable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tourtable }
    end
  end
end
  # GET /tourtables/new
  # GET /tourtables/new.json
  def new
    if signed_in?
    @tourtable = Tourtable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tourtable }
    end
  end
end
  # GET /tourtables/1/edit
  def edit
    if signed_in?
    @tourtable = Tourtable.find(params[:id])
  end
end
  # POST /tourtables
  # POST /tourtables.json
  def create
    if signed_in?
    @tourtable = Tourtable.new(params[:tourtable])

    respond_to do |format|
      if @tourtable.save
        format.html { redirect_to @tourtable, notice: 'Tourtable was successfully created.' }
        format.json { render json: @tourtable, status: :created, location: @tourtable }
      else
        format.html { render action: "new" }
        format.json { render json: @tourtable.errors, status: :unprocessable_entity }
      end
    end
  end
end
  # PUT /tourtables/1
  # PUT /tourtables/1.json
  def update
    if signed_in?
    @tourtable = Tourtable.find(params[:id])

    respond_to do |format|
      if @tourtable.update_attributes(params[:tourtable])
        format.html { redirect_to @tourtable, notice: 'Tourtable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tourtable.errors, status: :unprocessable_entity }
      end
    end
  end
end
  # DELETE /tourtables/1
  # DELETE /tourtables/1.json
  def destroy
    if signed_in?
    @tourtable = Tourtable.find(params[:id])
    @tourtable.destroy

    respond_to do |format|
      format.html { redirect_to tourtables_url }
      format.json { head :no_content }
    end
  end
end
end
