Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/the_contacts" => "contacts#show_contact"
    get "/all_contacts" => "contacts#every_contact"

  end
end
