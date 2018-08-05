require "pry"
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
  puts "I accept the following commands: "
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp

  if songs.include?(choice)
    puts "Playing #{choice}."

  elsif choice.to_i <= songs.length && choice.to_i > 0
    choice = songs[choice.to_i - 1]
    puts "Playing #{choice}."

  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  #binding.pry
  songs.each_with_index do |key, index|
    puts "#{index + 1}: #{key}"
  end
end

 def exit_jukebox
     puts "Goodbye"
end


def run(songs)
  help
  user_input = ""

  while user_input != "exit"
   puts "Please enter a command:"
   user_input = gets.chomp
     if user_input == "help"
       help
     elsif user_input == "list"
       list(songs)
     elsif user_input == "play"
       play(songs)
     elsif user_input == "exit"
       exit_jukebox
     end
   end
 end
