require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has secure password' do
    should have_secure_password
  end

  it { should validate_presence_of(:username) }
  it {should have_one(:list)}
end

