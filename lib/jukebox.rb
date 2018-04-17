
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

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  response = "Invalid input, please try again"
  songs.each_with_index do |song, number|
    song_number = (number + 1).to_s
    if user_input == song || user_input == song_number
      response = "Playing #{song}"
    end
  end
  puts response
end

def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input != "exit"
    case user_input
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    else
      run(songs)
    end
  else
    exit_jukebox
  end
end



