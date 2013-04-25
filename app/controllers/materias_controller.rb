class MateriasController < ApplicationController

  def index
    @materias = Materia.search(params[:search]).page(params[:page]).per_page(10)

    respond_to do |format|
      format.html 
      format.json { render json: @materias }
    end
  end


  def show
    @materia = Materia.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @materia }
    end
  end


  def new
    @materia = Materia.new

    respond_to do |format|
      format.html 
      format.json { render json: @materia }
    end
  end


  def edit
    @materia = Materia.find(params[:id])
  end


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


  def destroy
    @materia = Materia.find(params[:id])
    @materia.destroy

    respond_to do |format|
      format.html { redirect_to materias_url }
      format.json { head :no_content }
    end
  end
end
