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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, num|
    puts "#{num + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_resp = gets.chomp
  if user_resp.to_i != 0
    if user_resp.to_i < 10 and user_resp.to_i > 0
      puts "Playing #{songs[user_resp.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    if songs.include?(user_resp)
      puts "Playing #{user_resp}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      exit_jukebox
      break
    end
  end
end
