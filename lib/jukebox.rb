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

def run(songs)
  puts "Please enter a command:"
  user_input = gets.chomp
  
  if user_input.include?("play")
    play(songs)
  elsif user_input.include?("list")
    list(songs)
  elsif user_input.include?("help")
    help
  elsif user_input.include?("exit")
    exit_jukebox
  else run(songs)
  end
  
end
 
def play(songs)
 puts "Please enter a song name or number:"
 user_selects = gets.chomp
   songs.each_with_index {|song, no| 
    if song == user_selects || no == user_selects.to_i - 1
      puts "Playing #{song}"
      #run(songs)
    end}

    puts "Invalid input, please try again"
    #play(songs)

end

def list(songs)
  songs.each_with_index {|song, no| puts "#{no + 1}. #{song}"}
  #run(songs)
end

def help
  puts "Type help to get a list of commands"
  puts "Type play and then the song name to play that specific Song"
  puts "Type list to get a list of songs that can be played"
  puts "Type exit to exit the program"
  #run(songs)
end

def exit_jukebox
  puts "Goodbye"
end
