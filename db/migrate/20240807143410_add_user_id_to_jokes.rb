class AddUserIdToJokes < ActiveRecord::Migration[7.1]
  def up
    add_reference :jokes, :user, foreign_key: true
    default_user = User.first
    Joke.update_all(user_id: default_user.id)
  end

  def down
    remove_reference :jokes, :user, foreign_key: true
  end
end
