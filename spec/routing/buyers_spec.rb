require 'rails_helper'

RSpec.describe 'Routes for buyers', type: :routing do
  describe 'devise_for :buyers' do
    it do
      expect(post '/users/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'create'
      )
      expect(get '/users/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'new'
      )
      expect(delete '/users/sign_out').to route_to(
        controller: 'devise/sessions',
        action:     'destroy',
      )
      expect(get '/users/password/new').to route_to(
        controller: 'devise/passwords',
        action:     'new'
      )
      expect(get '/users/password/edit').to route_to(
        controller: 'devise/passwords',
        action:     'edit'
      )
      expect(get '/users/sign_up').to route_to(
        controller: 'devise/registrations',
        action:     'new'
      )
      expect(put '/users').to route_to(
        controller: 'devise/registrations',
        action:     'update'
      )
      expect(patch '/users').to route_to(
        controller: 'devise/registrations',
        action:     'update'
      )
    end
  end
end
