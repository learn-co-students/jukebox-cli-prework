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
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(arr)
  arr.each_with_index {|song,index| puts "#{index+1}. #{song}"}
end


def play(arr)
  puts "Please enter a song name or number:"
  sponse = gets.chomp
  arr.each_with_index do |song, idx|
    idx += 1
    if sponse.to_i > 0 && sponse.to_i < 10
      if sponse.to_i == idx
        puts "Playing #{song}"
      end
    elsif sponse == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(arr)
  help
  input = ""
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
       play(songs)
    elsif input == "exit"
      exit_jukebox
    else
      puts "Invalid command"
    end
  end
end
