class ListToDosController < ApplicationController
  # GET /list_to_dos
  # GET /list_to_dos.json
  skip_before_filter :authorize, :all
  def index
    @list_to_dos = ListToDo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list_to_dos }
    end
  end

  # GET /list_to_dos/1
  # GET /list_to_dos/1.json
  def show
    @list_to_do = ListToDo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list_to_do }
    end
  end

  # GET /list_to_dos/new
  # GET /list_to_dos/new.json
  def new
    @list_to_do = ListToDo.new
    #@list_to_dos = ListToDo.all
   
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list_to_do }
    end
  end

  # GET /list_to_dos/1/edit
  def edit
    @list_to_do = ListToDo.find(params[:id])
  end

  # POST /list_to_dos
  # POST /list_to_dos.json
  def create
    @list_to_do = ListToDo.new(params[:list_to_do])
    #debugger
    respond_to do |format|
      if @list_to_do.save
        format.html { redirect_to new_list_to_do_path, notice: 'List to do was successfully created.' }
        format.js
        format.json { render json: @list_to_do, status: :created, location: @list_to_do }
      else
        format.html { render action: "new" }
        format.json { render json: @list_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /list_to_dos/1
  # PUT /list_to_dos/1.json
  def update
    @list_to_do = ListToDo.find(params[:id])

    respond_to do |format|
      if @list_to_do.update_attributes(params[:list_to_do])
        format.html { redirect_to new_list_to_do_path, notice: 'List to do was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_to_dos/1
  # DELETE /list_to_dos/1.json
  def destroy
    @list_to_do = ListToDo.find(params[:id])
    @list_to_do.destroy

    respond_to do |format|
      format.html { redirect_to new_list_to_do_path }
      format.js
      format.json { head :no_content }
    end
  end
end
