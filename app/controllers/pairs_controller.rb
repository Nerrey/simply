class PairsController < ApplicationController
  before_action :set_pair, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!, :only => [:add_pair]
  skip_before_filter :verify_authenticity_token, :only => [:add_pair]
  
  # GET /pairs
  def index
    @pairs = Pair.all
  end

  # GET /pairs/1
  def show
  end

  # GET /pairs/new
  def new
    @pair = Pair.new
  end

  # GET /pairs/1/edit
  def edit
  end

  # POST /pairs
  def create
    @pair = Pair.new(pair_params)

    if @pair.save
      redirect_to pairs_path, notice: 'Pair was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pairs/1
  def update
    if @pair.update(pair_params)
      redirect_to pairs_path, notice: 'Pair was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pairs/1
  def destroy
    @pair.destroy
    redirect_to pairs_url, notice: 'Pair was successfully destroyed.'
  end

  def add_pair
    par = params.permit(:word, :translate1, :translate2, :translate3, :translate4, word_class_ids: [], book_ids: [])
    @pair = Pair.new(par)

    if @pair.save
      render text: "Ok"
    else
      render text: "Wrong params"
    end
  end

  def about

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pair
      @pair = Pair.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pair_params
      params.require(:pair).permit(:word, :translate1, :translate2, :translate3, :translate4, word_class_ids: [], book_ids: [])
    end
end
