class BuyActionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_buy_action, only: [:show, :edit, :update, :destroy]

  # GET /buy_actions
  # GET /buy_actions.json
  def index
    @buy_actions = BuyAction.all
  end

  # GET /buy_actions/1
  # GET /buy_actions/1.json
  def show
  end

  # GET /buy_actions/new
  def new
    @buy_action = BuyAction.new
  end

  # GET /buy_actions/1/edit
  def edit
  end

  # POST /buy_actions
  # POST /buy_actions.json
  def create
    @buy_action = BuyAction.new(buy_action_params)

    respond_to do |format|
      if @buy_action.save
        format.html { redirect_to admin_path, notice: 'Buy action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @buy_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @buy_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_actions/1
  # PATCH/PUT /buy_actions/1.json
  def update
    respond_to do |format|
      if @buy_action.update(buy_action_params)
        format.html { redirect_to admin_path, notice: 'Buy action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @buy_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_actions/1
  # DELETE /buy_actions/1.json
  def destroy
    @buy_action.destroy
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_action
      @buy_action = BuyAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_action_params
      params.require(:buy_action).permit(:title, :description, :link, :priority)
    end
end
