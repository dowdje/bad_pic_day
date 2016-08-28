class SessionsController < ApplicationController
  # before_action :set_session, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:show]


  # GET /sessions
  # GET /sessions.json
  def index
    # @sessions = Session.all
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @user = User.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    byebug
    @user = User.find_by(name: params[:user][:name])
    byebug
    if @user.authenticate(name: params[:user][:name], password_digest: params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  #default sessions code, saving for my hording purposes
    # @user = User.new(session_params)
    # respond_to do |format|
    #   if @user.save
    #     format.html { redirect_to @user, notice: 'Session was successfully created.' }
    #     format.json { render :show, status: :created, location: @user }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  # end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    reset_session
    redirect_to '/'

  #default destroy method
    # @session.destroy
    # respond_to do |format|
    #   format.html { redirect_to sessions_url, notice: 'Session was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.fetch(:session, {})
    end
end
