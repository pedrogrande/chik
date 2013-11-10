class InvolvementActionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_involvement_action, only: [:show, :edit, :update, :destroy]

  # GET /involvement_actions
  # GET /involvement_actions.json
  def index
    @involvement_actions = InvolvementAction.all
  end

  # GET /involvement_actions/1
  # GET /involvement_actions/1.json
  def show
  end

  # GET /involvement_actions/new
  def new
    @involvement_action = InvolvementAction.new
  end

  # GET /involvement_actions/1/edit
  def edit
  end

  # POST /involvement_actions
  # POST /involvement_actions.json
  def create
    @involvement_action = InvolvementAction.new(involvement_action_params)

    respond_to do |format|
      if @involvement_action.save
        format.html { redirect_to admin_path, notice: 'Involvement action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @involvement_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @involvement_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /involvement_actions/1
  # PATCH/PUT /involvement_actions/1.json
  def update
    respond_to do |format|
      if @involvement_action.update(involvement_action_params)
        format.html { redirect_to admin_path, notice: 'Involvement action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @involvement_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /involvement_actions/1
  # DELETE /involvement_actions/1.json
  def destroy
    @involvement_action.destroy
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_involvement_action
      @involvement_action = InvolvementAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def involvement_action_params
      params.require(:involvement_action).permit(:title, :description, :link, :button_text, :priority)
    end
end
