class NgaysController < ApplicationController
  # GET /ngays
  # GET /ngays.json
  def index
    @ngays = Ngay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ngays }
    end
  end

  # GET /ngays/1
  # GET /ngays/1.json
  def show
    @ngay = Ngay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ngay }
    end
  end

  # GET /ngays/new
  # GET /ngays/new.json
  def new
    @ngay = Ngay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ngay }
    end
  end

  # GET /ngays/1/edit
  def edit
    @ngay = Ngay.find(params[:id])
  end

  # POST /ngays
  # POST /ngays.json
  def create
    @ngay = Ngay.new(params[:ngay])

    respond_to do |format|
      if @ngay.save
        format.html { redirect_to @ngay, notice: 'Ngay was successfully created.' }
        format.json { render json: @ngay, status: :created, location: @ngay }
      else
        format.html { render action: "new" }
        format.json { render json: @ngay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ngays/1
  # PUT /ngays/1.json
  def update
    @ngay = Ngay.find(params[:id])

    respond_to do |format|
      if @ngay.update_attributes(params[:ngay])
        format.html { redirect_to @ngay, notice: 'Ngay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ngay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ngays/1
  # DELETE /ngays/1.json
  def destroy
    @ngay = Ngay.find(params[:id])
    @ngay.destroy

    respond_to do |format|
      format.html { redirect_to ngays_url }
      format.json { head :no_content }
    end
  end
end
