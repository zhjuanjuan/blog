class CommtentsController < ApplicationController
  # GET /commtents
  # GET /commtents.json
  def index
    @commtents = Commtent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commtents }
    end
  end

  # GET /commtents/1
  # GET /commtents/1.json
  def show
    @commtent = Commtent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commtent }
    end
  end

  # GET /commtents/new
  # GET /commtents/new.json
  def new
    @commtent = Commtent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commtent }
    end
  end

  # GET /commtents/1/edit
  def edit
    @commtent = Commtent.find(params[:id])
  end

  # POST /commtents
  # POST /commtents.json
  def create
    @commtent = Commtent.new(params[:commtent])

    respond_to do |format|
      if @commtent.save
        format.html { redirect_to @commtent, notice: 'Commtent was successfully created.' }
        format.json { render json: @commtent, status: :created, location: @commtent }
      else
        format.html { render action: "new" }
        format.json { render json: @commtent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commtents/1
  # PUT /commtents/1.json
  def update
    @commtent = Commtent.find(params[:id])

    respond_to do |format|
      if @commtent.update_attributes(params[:commtent])
        format.html { redirect_to @commtent, notice: 'Commtent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commtent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commtents/1
  # DELETE /commtents/1.json
  def destroy
    @commtent = Commtent.find(params[:id])
    @commtent.destroy

    respond_to do |format|
      format.html { redirect_to commtents_url }
      format.json { head :no_content }
    end
  end
end
