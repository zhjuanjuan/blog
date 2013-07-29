class Commtent1sController < ApplicationController
  # GET /commtent1s
  # GET /commtent1s.json
  def index
    @commtent1s = Commtent1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commtent1s }
    end
  end

  # GET /commtent1s/1
  # GET /commtent1s/1.json
  def show
    @commtent1 = Commtent1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commtent1 }
    end
  end

  # GET /commtent1s/new
  # GET /commtent1s/new.json
  def new
    @commtent1 = Commtent1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commtent1 }
    end
  end

  # GET /commtent1s/1/edit
  def edit
    @commtent1 = Commtent1.find(params[:id])
  end

  # POST /commtent1s
  # POST /commtent1s.json
  def create
    @commtent1 = Commtent1.new(params[:commtent1])

    respond_to do |format|
      if @commtent1.save
        format.html { redirect_to @commtent1, notice: 'Commtent1 was successfully created.' }
        format.json { render json: @commtent1, status: :created, location: @commtent1 }
      else
        format.html { render action: "new" }
        format.json { render json: @commtent1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commtent1s/1
  # PUT /commtent1s/1.json
  def update
    @commtent1 = Commtent1.find(params[:id])

    respond_to do |format|
      if @commtent1.update_attributes(params[:commtent1])
        format.html { redirect_to @commtent1, notice: 'Commtent1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commtent1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commtent1s/1
  # DELETE /commtent1s/1.json
  def destroy
    @commtent1 = Commtent1.find(params[:id])
    @commtent1.destroy

    respond_to do |format|
      format.html { redirect_to commtent1s_url }
      format.json { head :no_content }
    end
  end
end
