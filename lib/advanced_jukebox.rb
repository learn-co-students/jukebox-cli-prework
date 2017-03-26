my_songs = {
"Go Go GO" => '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/andrew/Development/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you shoose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.each do |key, value|
    puts key
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.strip
  if my_songs.keys.include?(user_input)
    puts "Playing #{user_input}"
    system "open #{my_songs[user_input]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  puts "Please enter a command:"
  user_input = gets.strip
  case user_input
  when "list"
    list(my_songs)
    run(my_songs)
  when "play"
    play(my_songs)
    run(my_songs)
  when "help"
    help
    run(my_songs)
  when "exit"
    exit_jukebox
    return
  else
    puts "Invalid input, please try again"
    run(my_songs)
  end
end
