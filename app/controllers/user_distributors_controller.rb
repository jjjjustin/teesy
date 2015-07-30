class UserDistributorsController < ApplicationController
  before_action :all_user_distributors, only: [:index, :create]
  before_action :set_user_distributor, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js


  def index
    @user = User.find(params[:user_id])
    @user_distributors = @user.distributors
    @distributors = Distributor.all

  end

  def _distributor_select
    @distributors = Distributor.all
  end

  # GET /user_distributors/1
  # GET /user_distributors/1.json
  def show
    @user_distributor = UserDistributor.find(params[:id])
  end

  # GET /user_distributors/new
  def new

    @distributors = Distributor.all
    @user_distributor = UserDistributor.new

  end

  # GET /user_distributors/1/edit
  def edit
  end

  # POST /user_distributors
  # POST /user_distributors.json
  def create
    @user_distributor = UserDistributor.new(user_distributor_params)

    respond_to do |format|
      if @user_distributor.save
        format.html { redirect_to @user_distributor, notice: 'User distributor was successfully created.' }
        format.json { render :show, status: :created, location: @user_distributor }
      else
        format.html { render :new }
        format.json { render json: @user_distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_distributors/1
  # PATCH/PUT /user_distributors/1.json
  def update
    respond_to do |format|
      if @user_distributor.update(user_distributor_params)
        format.html { redirect_to @user_distributor, notice: 'User distributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_distributor }
      else
        format.html { render :edit }
        format.json { render json: @user_distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_distributors/1
  # DELETE /user_distributors/1.json
  def destroy
    @user_distributor.destroy
    respond_to do |format|
      format.html { redirect_to user_distributors_url, notice: 'User distributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def all_user_distributors
      @user_distributors = UserDistributor.all
    end

    def set_user_distributor
      @user_distributor = UserDistributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_distributor_params
      params.require(:user_distributor).permit(:user_id, :distributor_id)
    end
end
