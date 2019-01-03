require "pry"

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
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |track, index|
    puts "#{index + 1}. #{track}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  next_track = gets.chomp

  songs.each_with_index do |track, index|
    if next_track == track
      puts "Playing #{songs[index]}"
    elsif next_track.to_i == index
      puts "Playing #{songs[index - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_entry = ""
  while user_entry != "exit"
    puts "Please enter a command:"
    user_entry = gets.chomp
    if user_entry == "help"
      help
    elsif user_entry == "list"
      list(songs)
    elsif user_entry == "play"
      play(songs)
    else
      help
    end
  end
  exit_jukebox
end
