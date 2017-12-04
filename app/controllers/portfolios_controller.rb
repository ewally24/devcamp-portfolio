class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
    # @portfolio_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @portfolio_item = Portfolio.params[:id]

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subitle, :body))
        format.html {redirect_to portfolios_path, notice: 'Portfolio successfully updated'}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html{redirect_to portfolios_path, notice: 'Portfolio was successfully deleted'}
    end
  end
end
