#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/grego/Code/projects/flatiron/prework/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.keys.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end


def play(song_list)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  user_input = gets.chomp

    if  song_list.include?(user_input)
      system "open #{song_list[user_input]}"
      # run(song_list)
    else
      puts "Invalid input, please try again"
      play(song_list)
    end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye!"
end

def run(songs)
  #this method is the same as in jukebox.rb  help
    puts "\nPlease enter a command:"
    user_input = gets.chomp

    case user_input
    when "help"
      help
      run(songs)
    when "list"
      list(songs)
      run(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      help
      run(songs)
    end

end
