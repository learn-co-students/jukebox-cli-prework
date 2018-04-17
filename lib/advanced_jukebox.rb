#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.each do |key, value|
    puts key
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
  response = "Invalid input, please try again"
  my_songs.each do |key, value|
    if user_input == key
      response = "Playing #{key}"
      system "open #{value}"
    end
  end
  puts response
  run(my_songs)
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input != "exit"
    case user_input
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    else
      run(songs)
    end
  else
    exit_jukebox
  end
end
