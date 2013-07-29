class CommemtsController < ApplicationController
    before_filter :authenticate_user!
  # GET /commemts
  # GET /commemts.json
  def index
    @commemts = Commemt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commemts }
    end
  end

  # GET /commemts/1
  # GET /commemts/1.json
  def show
    @commemt = Commemt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commemt }
    end
  end

  # GET /commemts/new
  # GET /commemts/new.json
  def new
    @commemt = Commemt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commemt }
    end
  end

  # GET /commemts/1/edit
  def edit
    @commemt = Commemt.find(params[:id])
  end

  # POST /commemts
  # POST /commemts.json
  def create
    @commemt = Commemt.new(params[:commemt])
    @commemt.post_id = params[:post_id]
    @commemt.user_id = current
    respond_to do |format|
      if @commemt.save
        format.html { redirect_to :back, notice: 'Commemt was successfully created.' }
        format.json { render json: @commemt, status: :created, location: @commemt }
      else
        format.html { render action: "new" }
        format.json { render json: @commemt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commemts/1
  # PUT /commemts/1.json
  def update
    @commemt = Commemt.find(params[:id])

    respond_to do |format|
      if @commemt.update_attributes(params[:commemt])
        format.html { redirect_to @commemt, notice: 'Commemt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commemt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commemts/1
  # DELETE /commemts/1.json
  def destroy
    @commemt = Commemt.find(params[:id])
    @commemt.destroy

    respond_to do |format|
      format.html { redirect_to commemts_url }
      format.json { head :no_content }
    end
  end
end
