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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  array.each_with_index do |song, index|
    if choice == song || choice.to_i == index + 1
      return puts "Playing #{song}"
    end
  end
  puts "Invalid input, please try again."
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  answer = gets.chomp.downcase
  if answer == 'exit'
    exit_jukebox
  else
    until answer == 'exit'
      case answer
        when "help"
          help
        when "list"
          list(array)
        when "play"
          play(array)
      end
      puts "Please enter a command:"
      answer = gets.chomp.downcase
    end
  end
end
