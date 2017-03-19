class String
  def can_be_int?
    self.to_i.to_s == self
  end
end

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
# help, play, list, exit

def help
  puts "I accept the following commands:"
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.can_be_int?
    input_to_index = input.to_i - 1
    if input_to_index >= 0 && input_to_index < songs.length
      puts "Playing #{songs[input_to_index]}"
    else
      puts "Invalid input, please try again."
    end
  else
    if songs.include?(input)
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again."
    end
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  help
  input = ""
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
       play(songs)
    elsif input == "exit"
      exit_jukebox
    else
      puts "Invalid command"
    end
  end
end
