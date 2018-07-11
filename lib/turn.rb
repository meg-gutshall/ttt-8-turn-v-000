def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Check whether a position is occupied
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] =="O"
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true 
    return false
  else
    if index >= 0 && index <= 8
       #index.between?(0,8)
      return true
    else
      return false
    end
  end
end

# Convert user input to an index
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

# -----------

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  while valid_move?(board, index) == false do
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    valid_move?(board, index)
  end
  move(board, index, current_player = "X")
  display_board(board)
end