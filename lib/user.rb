require './lib/joke'
class User
  attr_reader :name
  attr_accessor :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(listener, teller)
    joke = Joke.new
    listener.learn(joke)
  end

end
