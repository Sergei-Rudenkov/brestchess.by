class NewslinesController < ApplicationController
  # GET /newslines
  # GET /newslines.json
  def index
    @newslines = Newsline.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newslines }
    end
  end

  # GET /newslines/1
  # GET /newslines/1.json
  def show
    @newsline = Newsline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsline }
    end
  end

  # GET /newslines/new
  # GET /newslines/new.json
  def new
    @newsline = Newsline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsline }
    end
  end

  # GET /newslines/1/edit
  def edit
    @newsline = Newsline.find(params[:id])
  end

  # POST /newslines
  # POST /newslines.json
  def create
    @newsline = Newsline.new(params[:newsline])

    respond_to do |format|
      if @newsline.save
        format.html { redirect_to newslines_path, notice: 'Newsline was successfully created.' }
        format.json { render json: @newsline, status: :created, location: @newsline }
      else
        format.html { render action: "new" }
        format.json { render json: @newsline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newslines/1
  # PUT /newslines/1.json
  def update
    @newsline = Newsline.find(params[:id])

    respond_to do |format|
      if @newsline.update_attributes(params[:newsline])
        format.html { redirect_to newslines_path, notice: 'Newsline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newsline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newslines/1
  # DELETE /newslines/1.json
  def destroy
    @newsline = Newsline.find(params[:id])
    @newsline.destroy

    respond_to do |format|
      format.html { redirect_to newslines_url }
      format.json { head :no_content }
    end
  end
end
