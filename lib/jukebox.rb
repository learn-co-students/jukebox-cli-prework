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
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end



def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{my_songs[index]}"
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  response = "Invalid input, please try again"
  my_songs.each_with_index do |song, index|
    if user_input == song
      response = song
    elsif user_input == (index + 1).to_s
      response = song
    end
  end
    puts response
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  cmd = gets.chomp
  if cmd == "exit"
    exit_jukebox
  elsif cmd == "list"
    list(my_songs)
  elsif cmd == "play"
    play(my_songs)
  end
end
