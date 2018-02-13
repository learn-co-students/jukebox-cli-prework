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
  songs.each_with_index {|song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs)
  invalid_choice = true
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  songs.each_with_index {|song, index|
    if user_choice == song || user_choice == "#{index+1}"
      puts "Playing #{song}"
      invalid_choice = false
    end
  }
  puts "Invalid input, please try again" if invalid_choice == true
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  exit_status = false
  while exit_status == false do
    puts "Please enter a command:"
    user_command = gets.chomp
    case user_command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_status = true
        exit_jukebox
      else
        puts "Please enter a valid command"
        help
    end
  end
end
