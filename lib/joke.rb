class Joke


  def initialize(joke = nil)
    @joke = joke
  end

  def id
    id = @joke[:id]
  end

  def question
    question = @joke[:question]
  end

  def answer
    answer = @joke[:answer]
  end


end

# @id = params[:id]
# @question  = params[:question]
# @answer = params[:answer]
