class AddUserIdToJokes < ActiveRecord::Migration[7.1]
  def up
    add_reference :jokes, :user, foreign_key: true
    Joke.update_all(user_id: User.first)
  end

  def down
    remove_reference :jokes, :user, foreign_key: true
  end
end
