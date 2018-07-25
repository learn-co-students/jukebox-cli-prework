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
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if list(songs).include?(user_song)
    puts "Playing #{user_song}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  unless user_input == "exit"
    puts "Please enter a command:"
  else
    case user_input 
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    end
  end
end


