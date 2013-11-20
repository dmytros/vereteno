Spree::HomeController.class_eval do
  def index
    slider = Spree::Taxon.where(:permalink => 'slider').first
    @slider_products = slider.products.active if slider

    featured = Spree::Taxon.where(:permalink => 'featured').first
    @featured_products = featured.products.active if featured

    latest = Spree::Taxon.where(:permalink => 'latest').first
    @latest_products = latest.products.active if latest
  end
end
