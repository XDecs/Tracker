class TaksController < ApplicationController
  # GET /taks
  # GET /taks.json
  def index
    @taks = Tak.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taks }
    end
  end

  # GET /taks/1
  # GET /taks/1.json
  def show
    @tak = Tak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tak }
    end
  end

  # GET /taks/new
  # GET /taks/new.json
  def new
    @tak = Tak.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tak }
    end
  end

  # GET /taks/1/edit
  def edit
    @tak = Tak.find(params[:id])
  end

  # POST /taks
  # POST /taks.json
  def create
    @tak = Tak.new(params[:tak])

    respond_to do |format|
      if @tak.save
        format.html { redirect_to @tak, notice: 'Tak was successfully created.' }
        format.json { render json: @tak, status: :created, location: @tak }
      else
        format.html { render action: "new" }
        format.json { render json: @tak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taks/1
  # PUT /taks/1.json
  def update
    @tak = Tak.find(params[:id])

    respond_to do |format|
      if @tak.update_attributes(params[:tak])
        format.html { redirect_to @tak, notice: 'Tak was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taks/1
  # DELETE /taks/1.json
  def destroy
    @tak = Tak.find(params[:id])
    @tak.destroy

    respond_to do |format|
      format.html { redirect_to taks_url }
      format.json { head :ok }
    end
  end
end
