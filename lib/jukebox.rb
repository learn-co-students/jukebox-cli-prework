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

# #help
#      lists out the possible commands (FAILED - 1)
def help
puts "
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
"
end


# #list
# lists out the available songs (FAILED - 6)
def list(songs)

    songs.each_with_index do |name, index |
      puts "#{index+1}. #{name}"
    end

end

# #play
#can find a song when given a number from the user (FAILED - 2)
# can find a song when given a full song name (FAILED - 3)
# returns an error when given a number that does not correspond to a song (FAILED - 4)
# returns an error when given a name that does not correspond to an existing song (FAILED - 5)
def play (songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  input = input.strip

  if(input.to_i != 0)
    n=input.to_i
    if  (n > 0 && n <= songs.size )
      puts "Playing #{songs[n-1]}"
      return
    else
      puts "Invalid input, please try again"
      return
    end
  else
    songs.each do |name|
      if (name.downcase == input.downcase)
        puts "Playing #{name}"
        return
      end
    end  #songs.each
    puts "Invalid input, please try again"
  end #if
end

# #exit_jukebox
# terminates the running of the program and outputs 'Goodbye' (FAILED - 7)
def exit_jukebox
  puts "Goodbye"
end

# #run
# starts the program script (FAILED - 8)
def run (songs)
  help
  while(true) do
    puts "Please enter a command:"
    input = gets.chomp
    input = input.strip
    case input
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)

    when "list"
      list(songs)

    else
    end


  end #while
end
