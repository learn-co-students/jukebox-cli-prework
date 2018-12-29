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
  commands = {
    help: "displays this help message",
    list: "displays a list of songs you can play",
    play: "lets you choose a song to play",
    exit: "exits this program"
  }
  commands.each do |key, value|
    puts "#{key.to_s} : #{value}"
  end
end

def list(songs)
  songs.each do |song|
   puts song
  end
end

def play(song_list)
  getSong = gets.chomp
  if song_list.include?(getSong)
    puts "playing #{getSong}"
  elsif getSong == "1".."song_list.length"
    puts "playing #{song_list[getSong.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end


def exit_jukebox
  puts "Goodbye"
  exit
end

def run(song_list)
  command = gets.chomp
  case command
  when "help"
    help
  when "play"
    play(song_list)
  when "list"
    list(song_list)
  when "exit"
    exit_jukebox
  end
end
