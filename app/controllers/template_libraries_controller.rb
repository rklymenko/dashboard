class TemplateLibrariesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_template_library, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'

  def index
    @template_libraries = TemplateLibrary.all
  end

  def show
  end

  def new
    @template_library = TemplateLibrary.new
  end

  def edit
  end

  def create
    @template_library = TemplateLibrary.new(template_library_params)

    respond_to do |format|
      if @template_library.save
        format.html { redirect_to template_libraries_path, notice: 'Template library was successfully created.' }
        format.json { render :show, status: :created, location: @template_library }
      else
        format.html { render :new }
        format.json { render json: @template_library.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @template_library.update(template_library_params)
        format.html { redirect_to template_libraries_path, notice: 'Template library was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_library }
      else
        format.html { render :edit }
        format.json { render json: @template_library.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @template_library.destroy
    respond_to do |format|
      format.html { redirect_to template_libraries_url, notice: 'Template library was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_library
      @template_library = TemplateLibrary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_library_params
      params[:template_library].permit(:title)
    end
end
