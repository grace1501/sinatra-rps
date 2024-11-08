require "sinatra"
require "sinatra/reloader"

moves = ["rock", "paper", "scissors"]

def get_result(your_move, comp_move)
  if your_move == comp_move
    return "tied"
  end
  
  if your_move == "rock"
    if comp_move == "paper"
      return "lost"
    else
      return "won"
    end
  end

  if your_move == "paper"
    if comp_move == "scissors"
      return "lost"
    else
      return "won"
    end
  end

  if your_move == "scissors"
    if comp_move == "rock"
      return "lost"
    else
      return "won"
    end
  end

end

get("/") do
  erb(:home)
end

get("/rock") do
  @your_move = "rock"
  @comp_move = moves.sample
  @result = get_result(@your_move, @comp_move)
  erb(:rock)
end

get("/paper") do
  @your_move = "paper"
  @comp_move = moves.sample
  @result = get_result(@your_move, @comp_move)
  erb(:paper)
end

get("/scissors") do
  @your_move = "scissors"
  @comp_move = moves.sample
  @result = get_result(@your_move, @comp_move)
  erb(:scissors)
end
