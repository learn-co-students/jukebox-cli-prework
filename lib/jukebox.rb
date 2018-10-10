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
  my_songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  song_pick = gets.chomp
  i = song_pick.to_i
  if my_songs.include?(song_pick)
    song_choice = my_songs.select{|song| song == song_pick}
    puts "Playing #{song_choice}"
  elsif i > 0 && i < 10
    puts "Playing #{my_songs[i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  case command
  when "help"
    help
  when "list"
    list(my_songs)
  when "play"
    play(my_songs)
  when "exit"
    exit_jukebox
  end
end
