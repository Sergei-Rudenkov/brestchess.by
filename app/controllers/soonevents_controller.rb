class SooneventsController < ApplicationController
  # GET /soonevents
  # GET /soonevents.json
  def index
    @soonevents = Soonevent.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soonevents }
    end
  end

  # GET /soonevents/1
  # GET /soonevents/1.json
  def show
   if signed_in?
    @soonevent = Soonevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soonevent }
      end
    end
  end

  # GET /soonevents/new
  # GET /soonevents/new.json
  def new
   if signed_in?
    @soonevent = Soonevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soonevent }
      end
    end
  end

  # GET /soonevents/1/edit
  def edit
  if signed_in?
    @soonevent = Soonevent.find(params[:id])
   end
  end

  # POST /soonevents
  # POST /soonevents.json
  def create
    @soonevent = Soonevent.new(params[:soonevent])

    respond_to do |format|
      if @soonevent.save
        format.html { redirect_to @soonevent, notice: 'Soonevent was successfully created.' }
        format.json { render json: @soonevent, status: :created, location: @soonevent }
      else
        format.html { render action: "new" }
        format.json { render json: @soonevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soonevents/1
  # PUT /soonevents/1.json
  def update
   if signed_in?
    @soonevent = Soonevent.find(params[:id])

    respond_to do |format|
      if @soonevent.update_attributes(params[:soonevent])
        format.html { redirect_to @soonevent, notice: 'Soonevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @soonevent.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /soonevents/1
  # DELETE /soonevents/1.json
  def destroy
   if signed_in?
    @soonevent = Soonevent.find(params[:id])
    @soonevent.destroy

    respond_to do |format|
      format.html { redirect_to soonevents_url }
      format.json { head :no_content }
    end
    end
  end
end
