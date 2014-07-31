class TreesController < ApplicationController
  before_action :set_tree, only: [:show, :edit, :update, :destroy]

  # GET /trees
  # GET /trees.json
  def index
      @trees = Tree.all
  end
  
  def mytrees
    if user_signed_in?
      @trees = current_user.trees
    else
      @trees = []
    end
  end
  
  def map
    @trees = Tree.all
  end

  # GET /trees/1
  # GET /trees/1.json
  def show
    @tree = Tree.find(params[:id])
  end

  # GET /trees/new
  def new
    @tree = Tree.new
    5.times do
      quadrant = @tree.quadrants.build
    end
  end
  # GET /trees/1/edit
  def edit
    @tree = Tree.find(params[:id])
  end

  # POST /trees
  # POST /trees.json
  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    
    respond_to do |format|
      if @tree.save
        format.html { redirect_to @tree, notice: 'Tree was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tree }
      else
        format.html { render action: 'new' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trees/1
  # PATCH/PUT /trees/1.json
  def update
    respond_to do |format|
      if @tree.update(tree_params)
        format.html { redirect_to @tree, notice: 'Tree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trees/1
  # DELETE /trees/1.json
  def destroy
    @tree.destroy
    respond_to do |format|
      format.html { redirect_to trees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tree
      @tree = Tree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tree_params
      params.require(:tree).permit(:date, :species, :circum, :light, :lat, :long, :droad, :dwater, :direction, :notes, :parea, :ptree, :pleaf, quadrants_attributes: [:tree_id, :qnum, :image, :notes, :_destroy, lichens_attributes: [:tree_id, :species, :ascomata, :issored, :cyano, :pcover, :_destroy]])
    end
end
