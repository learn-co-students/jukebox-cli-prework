require 'pry'

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

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end


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

  puts "Please enter a song name or number:"
  choice = gets.chomp

  var = false
  song1 = ""



		songs.each_with_index do |song, index|
      if choice.to_i == index + 1 || choice == song
        song1 = song
      	var = true
      end
    end

    if var == true
      puts "Playing #{song1}"
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
  response = gets.chomp

  loop do
    if response == "list"
      list(songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "play"
      play(songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "exit"
      exit_jukebox
    end
    break
  end

end
