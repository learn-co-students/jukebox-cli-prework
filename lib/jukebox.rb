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

def play(songs)

  puts "Please enter a song name or number:"
  users_play = gets.chomp

  songs.each.with_index do |song, index|
    if users_play == song
      puts "playing #{song}"

    elsif users_play.to_i == index
      puts "playing #{songs[index - 1]}"

    else
      puts "Invalid input, please try again"

    end
  end
end

def list(songs)
  songs.each.with_index do |song, index|
      puts "#{index + 1}. #{song}"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def commands

  puts "Please enter a command:"
  gets.chomp

end

def run(songs)

  help
  user_choice = commands

  
    if user_choice == "list"
      list(songs)


    elsif user_choice == "play"
      play(songs)

    elsif user_choice == "exit"
      exit_jukebox

    else
      help
      user_choice
    end
end
