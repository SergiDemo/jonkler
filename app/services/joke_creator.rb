class JokeCreator
  def initialize(username, joke_body)
    @username = username
    @joke_body = joke_body
  end

  def call
    user = User.find_or_create_by(username: @username)
    joke = user.jokes.build(body: @joke_body)

    if joke.save
      joke
    else
      joke.errors
    end
  end
end
