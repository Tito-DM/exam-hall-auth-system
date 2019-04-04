class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:new,:create]
  before_action :require_same_user, only: [:edit,:update,:show,:destroy]

  # GET /users
  # GET /users.json
  def index
    session[:setting] = ""
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    session[:setting] = ""
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    session[:setting] = ""
  end

  # POST /users
  # POST /users.json
  def create
    session[:setting] = ""
    @user = User.new(user_params)
    session[:user_id] = @user.id #allow to login when registered
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    session[:setting] = ""
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    session[:setting] = ""
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def require_same_user
    if current_user != @user
      flash[:denger] = 'you can only acess your account'
      redirect_to root_path
    end
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :surname, :gender, :username, :password)
    end
end
