RSpec.describe Joke do
  RSpec.describe Joke do
    describe 'associations' do
      it { should belong_to(:user) }
    end

    describe 'validations' do
      it 'is valid with valid attributes' do
        user = User.create!(username: 'testuser')
        joke = Joke.new(body: 'This is a joke', user: user)
        expect(joke).to be_valid
      end
    end
  end
