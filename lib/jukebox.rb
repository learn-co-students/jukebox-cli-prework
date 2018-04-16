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
  puts "- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)

  songs.each_with_index do |song, num|
    puts "#{num+1}. #{song}"
  end
end

def play(songs)

  x = songs.length

  puts "Please enter a song name or number:"

  input = gets.chomp

  if songs.include? input

    puts "Playing #{input}"

  elsif (0...x).include? input.to_i-1

    puts "Playing #{songs[input.to_i-1]}"

  else

    puts "Invalid input, please try again"

  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(arr)
  help
  loop do

    puts "Please enter a command:"

    input = gets.chomp

    case input

      when "list"
      list(arr)
      when "help"
        help
      when "play"
        play(arr)
      when "exit"
        exit_jukebox
        break
    end
  end
end
