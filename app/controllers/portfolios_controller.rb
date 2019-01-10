class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit show update destroy]
  layout 'portfolio'

  def index
    @portfolio_items = Portfolio.all.order(id: :desc)
  end

  def angular
    @angular_portfolio_items = Portfolio.angular.order(id: :desc)
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
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
    if @portfolio_item.update(portfolio_item_params)
      redirect_to @portfolio_item, notice: 'Portfolio item updated!'
    else
      render(:edit)
    end
  end

  def destroy
    return unless @portfolio_item.destroy

    redirect_to portfolios_path, notice: 'Portfolio item deleted!'
  end

  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_item_params
    params
      .require(:portfolio)
      .permit(
        :title,
        :subtitle,
        :body,
        :main_image,
        :thumb_image,
        technologies_attributes: [:name]
      )
  end
end
