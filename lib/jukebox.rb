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

def list(songs)
songs.each_with_index {|x, index| puts "#{index + 1} . #{x}" }

end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if (1..9).include?(user_response.to_i)
    puts "Playing: #{songs[user_response.to_i - 1]} "
  elsif songs.include?(user_response)
    puts "Playing: #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(user_response)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
    if user_response == "help"
      help
    elsif user_response == "list"
      list
    elsif user_response == "play"
      play
    else
      exit_jukebox
    end
end
