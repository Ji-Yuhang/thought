class MicropostsController < ApplicationController
  before_action :set_micropost, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /microposts
  # GET /microposts.json
  def index
    @microposts = @user.microposts.page(params[:page]).order_by(:created_at => 'desc')
        # @articles = @user.articles.page params[:page]
  end

  # GET /microposts/1
  # GET /microposts/1.json
  def show
  end

  # GET /microposts/new
  def new
    @micropost = Micropost.new
    
  end

  # GET /microposts/1/edit
  def edit
  end

  # POST /microposts
  # POST /microposts.json
  def create
    if params.include?("/microposts/new") and microposts_new_params[:content].nil? and microposts_new_params[:content].empty?
      @micropost = Micropost.new(microposts_new_params)
    else
      @micropost = Micropost.new(micropost_params)
    end

    @micropost.user = @user

    respond_to do |format|
      if @micropost.save
        @microposts = @user.microposts.all.order_by(:created_at => 'desc')
        format.html { redirect_to action: 'index', notice: 'Micropost was successfully created.' }
        format.json { render :index, status: :created, location: @microposts }
      else
        format.html { render :new }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposts/1
  # PATCH/PUT /microposts/1.json
  def update
    respond_to do |format|
      if @micropost.update(micropost_params)
        format.html { redirect_to @micropost, notice: 'Micropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropost }
      else
        format.html { render :edit }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    @micropost.destroy
    respond_to do |format|
      format.html { redirect_to microposts_url, notice: 'Micropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost
      @micropost = Micropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost_params
      params.require(:micropost).permit(:content)
    end
    def microposts_new_params
      params.require("/microposts/new").permit(:content)
    end
    def have_microposts_new?
      params.include? :micropost

    end
  def set_user
    @user ||= current_user
  end
end
