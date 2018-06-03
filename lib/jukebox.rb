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

def list(songs_arr)
  songs_arr.each_with_index {|song, idx| puts "#{idx+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs_arr)
  puts "Please enter a song name or number"
  play_response = gets.chomp
  matching_song = songs_arr.select.with_index do |song, idx|
    play_response == song || play_response.to_i == (idx + 1) 
  end
  matching_song = matching_song[0]
  
  if matching_song != nil 
    puts "Playing #{matching_song}"
  else 
    puts "Invalid input, please try again"
  end
end

def run(songs)
  command_response = ""
  
  while command_response != "exit"
    puts "Please enter a command:"
    command_response = gets.chomp
    
    case command_response
      when "help"
        help
      when "list"
        list(song_list)
      when "play"
        play(song_list)
      when "exit"
        return exit_jukebox
    end
    
    puts command_response
  end
end
