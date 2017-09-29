def songsList
songsArr = [
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
end

def help
   puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
 end

def list(songsArr)
  songsArr.each_with_index do
    |song, index|
    puts "#{index + 1}. #{song}"
  end
end


def play(songsArr)
  puts "Please enter a song name or number:"
  userInput = gets.chomp
  index = userInput.to_i - 1
  if index >= 0 && index < songsArr.length
    song = songsArr[index]
    puts "Playing #{song}"
  elsif songsArr.include?(userInput)
    puts "Playing #{userInput}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  userInput = gets.chomp
  if userInput == "exit"
      puts exit_jukebox
    else
      until userInput == "exit" do
        case
        when userInput == "list"
          list(songs)
        when userInput == "help"
          help
        when userInput == "play"
          play(songs)
        else
          help
          userInput = gets.chomp
      end
    end
  end
end
