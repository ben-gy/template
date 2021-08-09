HighVoltage.configure do |config|
  # configure homepage
  config.home_page = 'home'

  # enable naked pages
  config.route_drawer = HighVoltage::RouteDrawers::Root

  # apply a layout to all pages
  config.layout = 'site'

  # use pages controller
  # config.routes = false
end
