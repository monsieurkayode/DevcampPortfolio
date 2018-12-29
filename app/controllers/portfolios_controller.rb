class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit show update destroy]
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.create(portfolio_item_params)
    if @portfolio_item.save
      redirect_to @portfolio_item, notice: 'Portfolio item created!'
    else
      render(:new)
    end
  end

  def edit; end

  def show; end

  def update
    if @portfolio_item.update(portfolio__item_params)
      redirect_to @portfolioitem, notice: 'Portfolio item updated!'
    else
      render(:edit)
    end
  end

  def destroy
    if @portfolio_item.destroy 
      redirect_to @portfolio_items, notice: 'Portfolio item deleted!'
    end
  end

  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_item_params
    params
      .require(:portfolio)
      .permit(:title, :subtitle, :body, :main_image, :thumb_image)
  end
end
