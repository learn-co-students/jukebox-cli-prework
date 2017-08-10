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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs.each_with_index do |song, index|
    if response.include?(song)
      puts "Playing #{song}"
    elsif response.to_i - 1 == index
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
      response = gets.chomp
    end
  end
end


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  loop do
    response = gets.chomp
    if response.include?("list")
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
      break
    end
  end
end
