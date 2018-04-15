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
  puts "- help : displays this help method"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}: #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if input.to_i > 0
    if input.to_i > songs.length
      puts "Invalid input, please try again"
    else
      i = input.to_i - 1
    end
  else
    if !(songs.include?(input))
      puts "Invalid input, please try again"
    end
  end

  songs.each_with_index do |song, index|
    if input == song || i == index
      puts "Playing #{song}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  loop do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    else input == "exit"
      exit_jukebox
      break
    end
  end
end
