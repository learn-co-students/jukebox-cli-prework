#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
"Go Go GO" => 'Users/jenncacace/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/jenncacace/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/jenncacace/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/jenncacace/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/jenncacace/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/jenncacace/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/jenncacace/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if my_songs.keys.include?(input)
    puts "Playing #{input}"
    system "open" << my_songs[input]
  else
    puts "Invalid input, please try again"

end

def exit_jukebox
  puts "Goodbye!"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.downcase.chomp

  case input
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else run
  end
end

system 'open home/jenncacace/jukebox-cli/audio/Emerald-Park/01.mp3'
