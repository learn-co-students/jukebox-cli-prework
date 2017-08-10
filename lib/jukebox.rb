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
  counter = 0
  while counter < songs.length
    puts "#{counter + 1}. #{songs[counter]}"
    counter += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection = gets.chomp
  songs.each do |song|
    if user_selection == song
      puts "Playing #{song}"
    elsif user_selection == (songs.index(song) + 1).to_s
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  users_response = []
  help

  until users_response == "exit"
    puts "Please enter a command:"
    users_response = gets.chomp
  end

  if users_response == "list"
    list
  elsif users_response == "play"
    play
  elsif users_response == "help"
    help
  elsif users_response == "exit"
    exit_jukebox
  end
end
