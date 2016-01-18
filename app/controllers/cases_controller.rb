class CasesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_case, only: [:show, :edit, :update, :destroy, :case_profile]
  layout 'dashboard'

  def index
    @cases = Case.all
  end

  def show
  end

  def case_profile
    @checklist = TemplateLibrary.all
  end

  def new
    @case = Case.new
  end

  def edit
  end

  def create
    @case = Case.new(case_params)

    respond_to do |format|
      if @case.save
        format.html { redirect_to cases_url, notice: 'Case was successfully created.' }
        format.json { render :show, status: :created, location: @case }
      else
        format.html { render :new }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @case.update(case_params)
        format.html { redirect_to cases_url, notice: 'Case was successfully updated.' }
        format.json { render :show, status: :ok, location: @case }
      else
        format.html { render :edit }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @case.destroy
    respond_to do |format|
      format.html { redirect_to cases_url, notice: 'Case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case
      @case = Case.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_params
      params[:case].permit(:name)
    end
end
