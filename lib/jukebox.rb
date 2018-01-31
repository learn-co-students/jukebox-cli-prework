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
  input = gets.chomp

  if (1..9).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    found = false
    songs.each do |song|
      if song.downcase.include?(input.downcase)
        puts "Playing #{song}"
        found = true
        break
      end
    end
    puts "Invalid input, please try again" if !found
  end
end

def list(songs)
  songs.each.with_index(1) {|x, index| puts "#{index}. #{x}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp

  until input.downcase == "exit" do
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Invalid input, please try again"
    end

    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
end
