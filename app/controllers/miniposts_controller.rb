class MinipostsController < ApplicationController
  # GET /miniposts
  # GET /miniposts.json
  def index
    @miniposts = Minipost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miniposts }
    end
  end

  # GET /miniposts/1
  # GET /miniposts/1.json
  def show
    @minipost = Minipost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @minipost }
    end
  end

  # GET /miniposts/new
  # GET /miniposts/new.json
  def new
    @minipost = Minipost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @minipost }
    end
  end

  # GET /miniposts/1/edit
  def edit
    @minipost = Minipost.find(params[:id])
  end

  # POST /miniposts
  # POST /miniposts.json
  def create
    @minipost = Minipost.new(params[:minipost])

    respond_to do |format|
      if @minipost.save
        format.html { redirect_to @minipost, notice: 'Minipost was successfully created.' }
        format.json { render json: @minipost, status: :created, location: @minipost }
      else
        format.html { render action: "new" }
        format.json { render json: @minipost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miniposts/1
  # PUT /miniposts/1.json
  def update
    @minipost = Minipost.find(params[:id])

    respond_to do |format|
      if @minipost.update_attributes(params[:minipost])
        format.html { redirect_to @minipost, notice: 'Minipost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @minipost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miniposts/1
  # DELETE /miniposts/1.json
  def destroy
    @minipost = Minipost.find(params[:id])
    @minipost.destroy

    respond_to do |format|
      format.html { redirect_to miniposts_url }
      format.json { head :no_content }
    end
  end
end
