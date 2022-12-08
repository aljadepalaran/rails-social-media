require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:user) { User.create(valid_params) }

  context 'when logging in' do
  end

  context 'when logging out' do
    it 'clears the user id from the session' do
      session[:user_id] = 1
      expect(session[:user_id]).to eql(1)

      delete 'destroy'
      expect(session[:user_id]).to eql(nil)
    end
  end

  def valid_params
    {
      first_name: 'John',
      last_name: 'Doe',
      email: 'johndoe@test.com',
      password: 'Passw0rd123!'
    }
  end
end