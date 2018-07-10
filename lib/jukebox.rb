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

def say_hello(name)
  "Hi #{name}!"
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can pla
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
  end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if input.to_i > 0 && input.to_i <= songs.size
    songs.each_with_index do |song, index|
      if input.to_i - 1 == index
        puts "#{song}"
      end
    end
  elsif songs.include?(input)
    songs.each_with_index do |song, index|
      if input == song
        puts "#{song}"
      end
    end
  else
    puts "Invalid input, please try again"
  end
end
    #
    # songs.each_with_index do |song, index|
    #   if input.to_i > 0 && input.to_i <= songs.size
    #     if input.to_i == index + 1
    #       puts "#{song}"
    #     end
    #   elsif (input != '0') && (input.to_i.to_s != input.strip)
    #     if input == song
    #       puts "#{song}"
    #     else
    #     puts "Invalid input, please try again"
    #     end
    #   else puts "Invalid input, please try again"
    #   end
    # end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "list"
      list(songs)
    elsif user_input == "help"
      help
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      exit_jukebox
      break
    else puts "try typing that again."
    end
  end

end
