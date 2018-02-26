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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  strintegers = ["1","2","3","4","5","6","7","8","9"]
    puts "Please enter a song name or number:"
    song_id = gets.chomp
    if songs.include?(song_id)
      puts "Playing #{song_id}"
    elsif strintegers.include?(song_id)
      puts "Playing #{songs[song_id.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
end

def list(songs)
  songs.each_with_index {|song, idx| puts "#{idx+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    help
    puts "Please enter a command:"
    response = gets.chomp
    if response == "help"
      help
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "exit"
      exit_jukebox
      break
    end
  end
end
