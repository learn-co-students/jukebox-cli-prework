songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    index += 1
    puts "#{index}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  # checks if response after it's been converted into an integer is included in the range (1..9).to_a
  if (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{array[user_response.to_i - 1]}"
  # checks if response string is included in the songs array
  elsif array.include?(user_response)
    puts "Playing #{user_response}"
  # if it's not included in either the range or songs array then it'll output the below string
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  while user_input
    puts "Please enter a command:"
    user_input = gets.strip.downcase
    case user_input
    when "list" # same as if user_input == "list"
      list(songs)
    when "play" # same as elsif user_input == "play"
      play(songs)
    when "help" # same as elsif user_input == "help"
      help
    when "exit" # same as elsif user_input == "exit"
      exit_jukebox
      break #breaks out of the loop/program
    else # if user_input doesn't match any of the above
      help
    end
  end
end
