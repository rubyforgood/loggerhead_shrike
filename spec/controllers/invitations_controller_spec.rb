require 'rails_helper'

RSpec.describe Users::InvitationsController, type: :controller do
  describe 'GET #new' do
    context 'improper authorization' do
      it 'redirects to login page' do
        @request.env['devise.mapping'] = Devise.mappings[:user]
        get :new
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  context 'proper authorization' do
    let (:admin_params) do
      {
        email:                 'admin@gmail.com',
        name:                  'Mr Admin',
        role:                  'admin',
        password:              'password',
        password_confirmation: 'password'
      }
    end

    let(:admin) do
      User.create!(admin_params)
    end

    it 'loads invitation form' do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      sign_in admin
      get :new
      expect(response.status).to eq(200)
    end
  end
end
