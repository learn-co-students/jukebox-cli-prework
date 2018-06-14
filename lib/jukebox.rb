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

### HELPER FUNCTION ###
def number_or_nil(string)
  num = string.to_i
  num if num.to_s == string
end
### END ###

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  if number_or_nil(response) && response.to_i.between?(0, songs.size)
    puts "Playing #{songs[response.to_i - 1]}"
  elsif !(number_or_nil(response)) && songs.include?(response)
    puts "Playing #{response}"    
  else
    puts "Invalid input, please try again."
  end
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  response = ""
  help

  until response.downcase == "exit"
  puts "Please enter a command:"
  response = gets.chomp

  case response.downcase
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Command is invalid."
      next
    end
  end
end