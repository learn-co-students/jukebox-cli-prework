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
  songs_list = []
  songs.each_with_index do |song, index|
    songs_list << "#{index + 1}. #{song}"
  end
  puts songs_list
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if (1..9).to_a.include?(user_song.to_i)
      puts "Playing #{songs[user_song.to_i - 1]}"
    elsif songs.include?(user_song)
      puts "Playing #{user_song}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_command = ""
  while user_command
    puts "Please enter a command:"
    user_command = gets.downcase.strip
    if user_command == "list"
      list(songs)
    elsif user_command == "help"
      help
    elsif user_command == "play"
      play(songs)
    elsif user_command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
