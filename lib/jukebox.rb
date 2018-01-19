# this method should call on the help method to show the user the available commands.
# Then, it should puts out the prompt: "Please enter a command:".
# It should capture the user's response using gets.chomp or gets.strip.
# We need to keep our program running as long as the user's input is not "exit".
#  Use a loop to continue asking the user for input until or unless their input is "exit".
#  Use if or case statements to determine how your program will respond to a user's input.
#    For example, if their input is "list", call the list method, if their input is "play", call the play method,
#     if their input is "help", call the help method and if their input is "exit", call the exit_jukebox method and break out of your loop to stop the program


def run(songs)
  # STDERR.puts "*********************************************#{argument}"
  quit = false
  help
  while quit == false
    puts "Please enter a command:"
    response = gets.chomp
    case response
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      quit = true
    end #case
  end #while
end

def exit_jukebox
  puts "Goodbye"
end


# This method takes in an argument of the songs array of puts out the following:
def list(songs)
  songs.each_with_index {|song,i| puts "#{i+1}. #{song}"}
end


def find_song_exists_by_name(songs, user_choice)
  song_found = nil
  songs.each {|song| song_found = user_choice if song == user_choice}
  song_found
end

# This method also takes in an argument of the songs array.
# It first puts out the prompt: "Please enter a song name or number:".
# It then stores the user's response using gets.chomp.
# If the user's response is a valid song number or song name, the method should puts out: "Playing <song name>".
#  Otherwise, it should puts out: "Invalid input, please try again".

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if response.to_i > 0 && response.to_i < songs.length              #valid number
    puts "Playing #{songs[(response.to_i)-1]}"
  elsif find_song_exists_by_name(songs,response) != nil                      #valid name
    puts "Playing #{response}"
  else                                                              #not found
    puts "Invalid input, please try again"
  end #if
end

# The help command should output instructions for the user on how to use the jukebox.
def help
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end #

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
