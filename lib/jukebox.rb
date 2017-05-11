def songs
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
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if 1 <= input.to_i && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input.to_s)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, idx| puts "#{idx + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Hi! I'm a Jukebox"
  help
  choice = ""

  until choice == "exit"
    puts "Please enter a command:"
    choice = gets.chomp.downcase

    case choice
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
end
