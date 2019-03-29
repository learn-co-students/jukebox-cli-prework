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
  puts <<-HELP
  I accept the following commands:
  - help : display this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  HELP
end

def play(songs)
  output = ""

  puts "Please enter a song name or number:"
  user_input = gets.chomp

  songs.each_with_index do |song, i|
    if user_input == song || user_input.to_i == i + 1
      output = "Playing #{song}"
      break
    else
      output = "Invalid input, please try again"
    end
  end

  puts output
end

def list(songs)
  output = ""

  songs.each_with_index do |song, i|
    output << "#{i + 1}. #{song}\n"
  end

  puts output
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"

  input = gets.strip

  while input != "exit" do
    case input
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    end

    puts "Please enter a command:"
    input = gets.strip
  end

  exit_jukebox
end
