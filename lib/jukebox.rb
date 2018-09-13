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


# def say_hello(name)
#   "Hi #{name}"
# end
#
# puts "Enter your name:"
# user_name = gets.chomp
#
# puts say_hello(user_name)


def help
  puts "help - get a list of commands"
  puts "list - get a list of all the songs"
  puts "play - play a song"
  puts "exit - exit the jukebox"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end


# def play(songs)
#   puts "Please enter a song name or number:"
#   user_song = gets.chomp
#  if songs.include?(user_song)
#    puts "Playing #{user_song}"
#  elsif puts "Invalid input, please try again"
#
#   end
#  end



def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  songs.each_with_index do |song, index|
    if song_choice.to_i == index
      puts "Playing #{songs[index-1]}"
    elsif songs.include?(song_choice)
        puts "Playing #{songs}"
    else
      puts "Invalid input, please try again"
    end
  end
end


def exit_jukebox
  puts "Goodbye"
end





# This method is a little trickier. It will use the other methods we built, our "helper" methods, to actually enact the running of our Jukebox.
#
# First, this method should call on the help method to show the user the available commands. Then, it should puts out the prompt: "Please enter a command:". It should capture the user's response using gets.chomp or gets.strip.
#
# We need to keep our program running as long as the user's input is not "exit". Use a loop to continue asking the user for input until or unless their input is "exit". Use if or case statements to determine how your program will respond to a user's input. For example, if their input is "list", call the list method, if their input is "play", call the play method, if their input is "help", call the help method and if their input is "exit", call the exit_jukebox method and break out of your loop to stop the program.

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input.downcase == "list"
    list(songs)
  elsif input.downcase == "play"
    play(songs)
  elsif input.downcase == "help"
    help
  elsif input.downcase == "exit"
    exit_jukebox
  else
    help
  end
 end
