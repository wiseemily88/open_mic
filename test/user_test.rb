require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_user_starts_with_no_jokes
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_user_can_learn_jokes

    sal = User.new("Sal")
    joke = Joke.new
    sal.learn(joke)

    assert_equal [joke], sal.jokes
  end

  def test_user_can_tell_jokes
    skip
    sal = User.new("Sal")
    ali = User.new("Ali")


    sal.tell(ali, sal)

    assert_instance_of Joke , ali.jokes
  end

  def test_user_can_tell_jokes
    sal = User.new("Sal")
    ali = User.new("Ali")


    sal.tell(ali, sal)

    assert_equal 1 , ali.jokes.count
  end

  def test_user_can_learn_multiple_jokes

    ilana = User.new("Ilana")



  end

end
