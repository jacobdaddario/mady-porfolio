class PortfolioItemsController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

  # GET /portfolio_items
  # GET /portfolio_items.json
  def index
    @portfolio_items = PortfolioItem.all
  end

  # GET /portfolio_items/1
  # GET /portfolio_items/1.json
  def show
  end

  # GET /portfolio_items/new
  def new
    @portfolio_item = PortfolioItem.new
  end

  # GET /portfolio_items/1/edit
  def edit
  end

  # POST /portfolio_items
  # POST /portfolio_items.json
  def create
    @portfolio_item = PortfolioItem.new(portfolio_item_params)

    if @portfolio_item.save
      flash[:success] = 'Portfolio item was successfully created.'
      redirect_to @portfolio_item 
    else
      flash.now[:danger] = "The form contains #{helpers.pluralize(@portfolio_item.errors.count), 'error'}"
      render :new
    end
  end

  # PATCH/PUT /portfolio_items/1
  # PATCH/PUT /portfolio_items/1.json
  def update
    if @portfolio_item.update(portfolio_item_params)
      flash[:success] = 'Portfolio item was successfully updated.'
      redirect_to @portfolio_item
    else
      flash.now[:danger] = "The form contains #{helpers.pluralize(@portfolio_item.errors.count), 'error'}"
      render :edit
    end
  end

  # DELETE /portfolio_items/1
  # DELETE /portfolio_items/1.json
  def destroy
    @portfolio_item.destroy
    flash[:notice] = 'Portfolio item was successfully destroyed.'
    redirect_to portfolio_items_url
  end

  # Serves as the root for the site. Displays 3 most recent portfolio items
  def home
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_item
      @portfolio_item = PortfolioItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_item_params
      params.require(:portfolio_item).permit(:title, :description, :user_id)
    end
end
