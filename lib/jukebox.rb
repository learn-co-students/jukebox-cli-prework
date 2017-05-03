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
  puts "I accept the following commands:\n
        - help : displays this help message\n
        - list : displays a list of songs you can play\n
        - play : lets you choose a song to play\n
        - exit : exits this program"
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  response =  gets.chomp
  if !my_songs.include?(response) && !(0..my_songs.length).include?(response.to_i - 1)
    puts "Invalid input, please try again"
  else
    my_songs.each do |song|
      if my_songs[response.to_i - 1] == song || response == song
        puts "Playing #{song}"
    end
  end
end

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user = gets.chomp
  case user
    when "help"
      help
    when "list"
      list
    when "play"
      play
    when "exit"
      exit_jukebox
  end
end



=begin songs = {}
my_songs.each_with_index do |song, index|
  songs[index + 1] = song
end
if !songs.has_key?(response.to_i) && !songs.value?(response)
  puts "Invalid input, please try again"
else
  songs.each do |key, value|
    if response.to_i == key || response == value
      puts "Playing #{value}"
    end
  end
end
=end
