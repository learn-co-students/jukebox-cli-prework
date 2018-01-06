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


# def say_hello(user_name)
#   puts "Hello, #{user_name}"
# end
#
#
# puts "What is your name?"
# name = gets.chomp
#
# say_hello(name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index {|item, index| p "#{index + 1}. #{item}"}
end

def play(song_list)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

    if  song_list.include?(user_input)
      puts "Playing #{user_input}"
    elsif user_input.to_i < song_list.length && user_input.to_i > 0
      puts "Now Playing: #{song_list[user_input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end

end



def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "\nPlease enter a command:"
  user_input = gets.chomp

  case user_input
  when "help"
    run(songs)
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else
    run(songs)
  end


end

# help
# list(songs)
# play(songs)
# run(songs)
