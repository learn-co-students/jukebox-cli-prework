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
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a command:"
  users_input = gets.chomp
  songs.each do |song, index|
    if answer = songs || index
      puts "Playing #{song}"
    elsif answer = false
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  users_input = ""
  while users_input != "exit"
  puts "Please enter a command:"
   users_input = gets.chomp
   if users_input == "list"
     list(songs)
   elsif users_input == "play"
       play(songs)
   elsif users_input == "help"
       help
   elsif users_input == "exit"
       exit_jukebox
    end
  end
end
