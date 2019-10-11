Rails.application.routes.draw do
  scope(:path => '/RailsApi') do
    get '/search_destination/:input', to: 'search#search_destination'
    get '/confirm_route/convert_coords/:location', to: 'confirm_route#get_coords'
    get '/confirm_route/mapbox', to: 'confirm_route#mapbox'
    get '/uber', to: 'uber_lyft#uber_estimate'
    get '/lyft', to: 'uber_lyft#lyft_estimate'
  end
end
