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
#  "Hi #{name}!"
# end
# puts "Enter your name:"
# user_name = gets.chomp

 # puts say_hello(user_name)

def help
  puts "I accept the follwing commands:
  - help: displays this help message
  - list: displays a list of songs you can play
  - play: lets you choose a song to play
  - exit: exits this program"
end

def list(songs)
  songs.each.with_index(1) do |song, num|
  puts "#{num}. #{song}"
  end
end

def play(songs)
 puts "Please enter a song name or number:"
 user_choice = gets.chomp
    if songs.include?(user_choice)
      puts "Playing #{user_choice}"
    elsif user_choice.to_i > 0 && user_choice.to_i <= songs.length
      puts "Playing #{songs[user_choice.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end

def exit_jukebox
 puts "Goodbye"
 exit
end

def run(songs)
  help
  puts "Please enter a command:"
  command = ""
  command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
    else
      "Invalid input, please try again"
    end
  end
