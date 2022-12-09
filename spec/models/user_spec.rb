require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating a user' do
    it 'can create if all required fields are filled' do
      user = User.new(valid_params)

      expect(user.valid?).to eql(true)
    end

    it 'cannot be created without a first name' do
      user = User.new(valid_params.except(:first_name))

      expect(user.valid?).to eql(false)
    end

    it 'cannot be created without a last name' do
      user = User.new(valid_params.except(:last_name))

      expect(user.valid?).to eql(false)
    end

    it 'cannot be created without an email' do
      user = User.new(valid_params.except(:email))

      expect(user.valid?).to eql(false)
    end

    it 'cannot be created without a password' do
      user = User.new(valid_params.except(:password))

      expect(user.valid?).to eql(false)
    end
  end

  describe '#name' do
    it 'returns the correct full name' do
      user = User.new(valid_params)

      expect(user.name).to eql('John Doe')
    end

    it 'converts the start of each name to capital' do
      user = User.new(valid_params)
      user.first_name = 'john'
      user.last_name = 'doe'

      expect(user.name).to eql('John Doe')
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
