class WordClassesController < ApplicationController
  before_action :set_word_class, only: [:show, :edit, :update, :destroy]

  # GET /word_classes
  def index
    @word_classes = WordClass.all
  end

  # GET /word_classes/1
  def show
  end

  # GET /word_classes/new
  def new
    @word_class = WordClass.new
  end

  # GET /word_classes/1/edit
  def edit
  end

  # POST /word_classes
  def create
    @word_class = WordClass.new(word_class_params)

    if @word_class.save
      redirect_to @word_class, notice: 'Word class was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /word_classes/1
  def update
    if @word_class.update(word_class_params)
      redirect_to @word_class, notice: 'Word class was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /word_classes/1
  def destroy
    @word_class.destroy
    redirect_to word_classes_url, notice: 'Word class was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_class
      @word_class = WordClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_class_params
      params.require(:word_class).permit(:name)
    end
end
