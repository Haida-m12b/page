class CmsController < ApplicationController
  # GET /cms
  # GET /cms.json
  def index
    @cms = Cm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cms }
    end
  end

  # GET /cms/1
  # GET /cms/1.json
  def show
    @cm = Cm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cm }
    end
  end

  # GET /cms/new
  # GET /cms/new.json
  def new
    @cm = Cm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cm }
    end
  end

  # GET /cms/1/edit
  def edit
    @cm = Cm.find(params[:id])
  end

  # POST /cms
  # POST /cms.json
  def create
    @cm = Cm.new(params[:cm])

    respond_to do |format|
      if @cm.save
        format.html { redirect_to @cm, notice: 'Cm was successfully created.' }
        format.json { render json: @cm, status: :created, location: @cm }
      else
        format.html { render action: "new" }
        format.json { render json: @cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cms/1
  # PUT /cms/1.json
  def update
    @cm = Cm.find(params[:id])

    respond_to do |format|
      if @cm.update_attributes(params[:cm])
        format.html { redirect_to @cm, notice: 'Cm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/1
  # DELETE /cms/1.json
  def destroy
    @cm = Cm.find(params[:id])
    @cm.destroy

    respond_to do |format|
      format.html { redirect_to cms_url }
      format.json { head :no_content }
    end
  end
end
