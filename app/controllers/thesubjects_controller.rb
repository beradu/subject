class ThesubjectsController < ApplicationController
  before_action :set_thesubject, only: [:show, :secondvisit, :edit, :update, :destroy]

  # GET /thesubjects
  # GET /thesubjects.json
  def index
    @thesubjects = Thesubject.all
  end


  # GET /thesubjects/1
  # GET /thesubjects/1.json
  def show
  end


  # GET /thesubjects
  # GET /thesubjects.json
  def secondvisit
    @visit2 = render :second_visits
  end


  # GET /thesubjects/new
  def new
    @thesubject = Thesubject.new
  end

  # GET /thesubjects/1/edit
  def edit
  end

  # POST /thesubjects
  # POST /thesubjects.json
  def create
    @thesubject = Thesubject.new(thesubject_params)

    respond_to do |format|
      if @thesubject.save
        format.html { redirect_to @thesubject, notice: 'Thesubject was successfully created.' }
        format.json { render :show, status: :created, location: @thesubject }
      else
        format.html { render :new }
        format.json { render json: @thesubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thesubjects/1
  # PATCH/PUT /thesubjects/1.json
  def update
    respond_to do |format|
      if @thesubject.update(thesubject_params)
        format.html { redirect_to @thesubject, notice: 'Thesubject was successfully updated.' }
        format.json { render :show, status: :ok, location: @thesubject }
      else
        format.html { render :edit }
        format.json { render json: @thesubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thesubjects/1
  # DELETE /thesubjects/1.json
  def destroy
    @thesubject.destroy
    respond_to do |format|
      format.html { redirect_to thesubjects_url, notice: 'Thesubject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thesubject
      @thesubject = Thesubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thesubject_params
      params.require(:thesubject).permit(:subNumber, :age)
    end
end
