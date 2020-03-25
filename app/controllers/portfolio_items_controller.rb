class PortfolioItemsController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create]
  before_action :authenticate_user!, except: [:home, :index, :show]

  # GET /portfolio_items
  def index
    @portfolio_items = PortfolioItem.all
  end

  # GET /portfolio_items/1
  def show
  end

  # GET /portfolio_items/new
  def new
    @portfolio_item = @user.portfolio_items.build
  end

  # GET /portfolio_items/1/edit
  def edit
  end

  # POST /portfolio_items
  def create
    @portfolio_item = @user.portfolio_items.build(portfolio_item_params)

    if @portfolio_item.save
      flash[:success] = 'Portfolio item was successfully created.'
      redirect_to @portfolio_item 
    else
      flash.now[:danger] = "The form contains #{helpers.pluralize(@portfolio_item.errors.count, 'error')}"
      render :new
    end
  end

  # PATCH/PUT /portfolio_items/1
  def update
    if @portfolio_item.update(portfolio_item_params)
      flash[:success] = 'Portfolio item was successfully updated.'
      redirect_to @portfolio_item
    else
      flash.now[:danger] = "The form contains #{helpers.pluralize(@portfolio_item.errors.count, 'error')}"
      render :edit
    end
  end

  # DELETE /portfolio_items/1
  def destroy
    @portfolio_item.destroy
    flash[:notice] = 'Portfolio item was successfully destroyed.'
    redirect_to portfolio_items_url
  end

  # Serves as the root for the site. Displays 3 most recent portfolio items
  def home
    @portfolio_items = PortfolioItem.limit(3)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_item
      @portfolio_item = PortfolioItem.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_item_params
      params.require(:portfolio_item).permit(:title, :description, :youtube_url, :preview_image)
    end
end
