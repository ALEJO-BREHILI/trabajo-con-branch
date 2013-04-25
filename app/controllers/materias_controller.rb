class MateriasController < ApplicationController
<<<<<<< HEAD
  # GET /materias
  # GET /materias.json
  def index
    @materias = Materia.all

    respond_to do |format|
      format.html # index.html.erb
=======

  def index
    @materias = Materia.search(params[:search]).page(params[:page]).per_page(10)

    respond_to do |format|
      format.html 
>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
      format.json { render json: @materias }
    end
  end

<<<<<<< HEAD
  # GET /materias/1
  # GET /materias/1.json
=======

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
  def show
    @materia = Materia.find(params[:id])

    respond_to do |format|
<<<<<<< HEAD
      format.html # show.html.erb
=======
      format.html 
>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
      format.json { render json: @materia }
    end
  end

<<<<<<< HEAD
  # GET /materias/new
  # GET /materias/new.json
=======

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
  def new
    @materia = Materia.new

    respond_to do |format|
<<<<<<< HEAD
      format.html # new.html.erb
=======
      format.html 
>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
      format.json { render json: @materia }
    end
  end

<<<<<<< HEAD
  # GET /materias/1/edit
=======

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
  def edit
    @materia = Materia.find(params[:id])
  end

<<<<<<< HEAD
  # POST /materias
  # POST /materias.json
=======

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
  def create
    @materia = Materia.new(params[:materia])

    respond_to do |format|
      if @materia.save
        format.html { redirect_to @materia, notice: 'Materia was successfully created.' }
        format.json { render json: @materia, status: :created, location: @materia }
      else
        format.html { render action: "new" }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  # PUT /materias/1
  # PUT /materias/1.json
=======

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
  def update
    @materia = Materia.find(params[:id])

    respond_to do |format|
      if @materia.update_attributes(params[:materia])
        format.html { redirect_to @materia, notice: 'Materia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  # DELETE /materias/1
  # DELETE /materias/1.json
=======

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
  def destroy
    @materia = Materia.find(params[:id])
    @materia.destroy

    respond_to do |format|
      format.html { redirect_to materias_url }
      format.json { head :no_content }
    end
  end
end
