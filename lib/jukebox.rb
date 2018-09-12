require 'pry'

# ruby lib/jukebox.rb to run file

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

#Your jukebox should respond to 4 commands: help, play, list, and exit.

#When you run the program in the command line it should greet the user
#and prompt them for input.
#Your jukebox should respond to 4 commands: help, play, list, and exit.

#The help command should output instructions for the user on how to use the jukebox.
#The list command should output a list of songs that the user can play.
#The play command should ask a user to input a song name or number.
  #It should then output 'Playing Phoenix - 1901' or whatever the song name is.
#If the user types in exit, the jukebox should say goodbye and the program should shut down.

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  selection = gets.chomp
  if songs.include?(selection)
    puts "Playing #{selection}"
  elsif selection.to_i > 0 && selection.to_i <= songs.count
    puts "Playing #{songs[selection.to_i  - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  loop do
    command = gets.chomp
      if command == "help"
        help
      elsif command == "list"
        list(songs)
      elsif command == "play"
        puts "Please enter a song name or number:"
        play(songs)
      elsif command == "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end

# calls on all of these "helper" methods to implement the behavior of our program.
