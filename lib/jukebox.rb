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

def list(songs)
  song_list = []
  songs.each_with_index do |song_details, index|
    song_list << "#{index + 1}. #{song_details}"
  end
puts song_list
end

def play(songs)
  puts "Please enter a song name or number"
users_choice = gets.chomp
  if songs.include? users_choice
    puts "Playing #{users_choice}"
 elsif (1..9).include?(users_choice.to_i)
   puts "Playing #{songs[users_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
while true
    puts "Please enter a command:"
      user_response = gets.chomp
    case user_response
      when "list"
          list(songs)
      when "play"
          play(songs)
      when "help"
          help
      else "exit"
          exit_jukebox
        break
      end
  end
end
