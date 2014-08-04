class GammisController < ApplicationController
  # GET /gammis
  # GET /gammis.json
  skip_before_filter :authorize, only: [:create, :update, :destroy, :index, :new, :show, :edit]

  def index
    @gammis = Gammi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gammis }
    end
  end

  # GET /gammis/1
  # GET /gammis/1.json
  def show
    @gammi = Gammi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gammi }
    end
  end

  # GET /gammis/new
  # GET /gammis/new.json
  def new
    @gammi = Gammi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gammi }
    end
  end

  # GET /gammis/1/edit
  def edit
    @gammi = Gammi.find(params[:id])
  end

  # POST /gammis
  # POST /gammis.json
  def create
    @gammi = Gammi.new(params[:gammi])

    respond_to do |format|
      if @gammi.save
        format.html { redirect_to @gammi, notice: 'Gammi was successfully created.' }
        format.json { render json: @gammi, status: :created, location: @gammi }
      else
        format.html { render action: "new" }
        format.json { render json: @gammi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gammis/1
  # PUT /gammis/1.json
  def update
    @gammi = Gammi.find(params[:id])

    respond_to do |format|
      if @gammi.update_attributes(params[:gammi])
        format.html { redirect_to @gammi, notice: 'Gammi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gammi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gammis/1
  # DELETE /gammis/1.json
  def destroy
    @gammi = Gammi.find(params[:id])
    @gammi.destroy

    respond_to do |format|
      format.html { redirect_to gammis_url }
      format.json { head :no_content }
    end
  end
end
