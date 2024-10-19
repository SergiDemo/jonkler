  # frozen_string_literal: true

  RSpec.describe Joke do
    describe 'associations' do
      it { is_expected.to belong_to(:user) }
    end

    describe 'validations' do
      it 'is valid with valid attributes' do
        user = User.create!(username: 'testuser')
        joke = described_class.new(body: 'This is a joke', user: user)
        expect(joke).to be_valid
      end
    end
  end
