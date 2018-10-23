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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def list (songs)


  songs.each_with_index do |song, index|
  puts "#{index +1}. #{song}"
  end

end

def play (songs)
  puts "Please enter a song name or number:"

  wanted_song = gets.chomp
  not_valid_input = true




  songs.each_with_index do |song, index|

    if wanted_song == song || wanted_song.to_i == index + 1
      puts "Playing #{song}"
      not_valid_input = false
    end


  end

  if not_valid_input == true
    puts "Invalid input, please try again"
  end


end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help
  puts "Please enter a command:"
  user_response = gets.chomp

  until user_response == false

    if user_response =='list'
      list(songs)
       puts "Please enter a command:"
  user_response = gets.chomp
    elsif user_response == "play"
      play(songs)
      puts "Please enter a command:"
  user_response = gets.chomp
    elsif user_response == "help"
      help
     puts "Please enter a command:"
  user_response = gets.chomp
    elsif user_response == "exit"
      exit_jukebox
      break
    end




  end

end
