#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each do |song, path|
    puts song
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
  puts "Please enter a song:"
  user_input = gets.chomp

  song_list = []

  my_songs.each do |song, location|
    song_list.push(song)
  end

  if song_list.include?(user_input)
    puts my_songs[user_input]
  else
    puts "Invalid choice"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"

end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  puts "Please enter a command:"
  user_input = gets.chomp

    if user_input == "help"
      help
    elsif user_input == "exit"
      exit_jukebox
    elsif user_input == "play"
      play(songs)
    elsif user_input == "list"
      list(songs)
    else
      puts "unknown command"
    end
end

list(my_songs)
play(my_songs)
