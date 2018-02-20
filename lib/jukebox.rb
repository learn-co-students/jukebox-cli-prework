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

def list(songs)
songs.each_with_index{|a,i|
puts "#{i + 1}. #{a}"
}
end

def play(songs)
i = 0
puts "Please enter a song name or number"
input = gets.chomp

  while i < songs.length
    if input == songs[i] || input.to_i == (i + 1)
      puts "Playing #{songs[i]}"
    else
      puts "Invalid input, please try again"
    end
    i +=1
  end


puts
end

def exit_jukebox
puts "Goodbye"
end


def run(songs)
help
puts "Please enter a command:"
input = gets.chomp
  until input == "exit"
    if input == "play"
      play
    elsif input == "help"
      help
    elsif input == "list"
      list
    end
  puts "Please enter a command:"
  input = gets.chomp
  end
exit_jukebox
end
