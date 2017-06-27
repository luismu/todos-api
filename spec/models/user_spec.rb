require 'rails_helper'

RSpec.describe User, type: :model do
  # association test
  # ensure User model has a 1:m relantionship with todo model
  it { should have_many(:todos) }
  # validation tests
  # ensure name, email and pass_digest are present before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
end
