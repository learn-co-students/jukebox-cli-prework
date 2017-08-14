#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => 'C:\Users\Chuck\.atom\.learn-ide\home\wlscripps-100225\code\labs\jukebox-cli\audio\Emerald-Park\01.mp3',
# "LiberTeens" => 'C:\Users\Chuck\.atom\.learn-ide\home\wlscripps-100225\code\labs/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  'C:\Users\Chuck\.atom\.learn-ide\home\wlscripps-100225\code\labs/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => 'C:\Users\Chuck\.atom\.learn-ide\home\wlscripps-100225\code\labs/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => 'C:\Users\Chuck\.atom\.learn-ide\home\wlscripps-100225\code\labs/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => 'C:\Users\Chuck\.atom\.learn-ide\home\wlscripps-100225\code\labs/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => 'C:/Users/Chuck/.atom/.learn-ide/home/wlscripps-100225/code/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
# }
x

def help
  puts "I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : dislays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  list = my_songs.keys
  list.each do |song, index|
    puts "#{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Which song would you like to hear?"
  choice = gets.chomp
  list = my_songs.keys
  if list.include?(choice)
    open my_songs[choice]
  else
    puts "Sorry, we don't have that song!"
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  comm = gets.chomp
  case(comm.downcase)
  when "help"
    help
  when "play"
    play(song_list)
  when "list"
    list(song_list)
  when "exit"
    exit_jukebox
  end
end
