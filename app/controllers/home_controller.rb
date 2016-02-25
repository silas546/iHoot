class HomeController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
    @orders = ShopifyAPI::Order.find(:all, :params => {:limit => 10, :order => "created_at DESC"})
  end
end
