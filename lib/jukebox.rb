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

  def help()
    puts "I accept the following commands:"

    command_hash = {
      :help => "- help : displays this help message",
      :list => "- list : displays a list of songs you can play",
      :play => "- play : lets you choose a song to play",
      :exit => "- exit : exits this program"
    }
    command_hash.values.each { |i| puts i}

  end

  def list(song_array)
    song_array.each_with_index do |song_name, index|
        puts "#{index}. #{song_name}"
    end
  end

  def play(song_array)
    puts "Please enter a song name or number:"
    user_input = gets.chomp

    if song_array.any? { |val| /user_input/ =~ val}
     song_choice = song_array.select{|song| song.match(/user_input}/)}
     puts song_choice
     return
    else
     puts "Invalid input, please try again"
    # return play(song_array)
    end
  end

  def exit_jukebox
    puts "Goodbye"
  end

def run(songs)
  help()
  command = ''
    until command == 'exit'
      puts "Please enter a command:"
      command = gets.chomp
      
        if command == 'list'
          list(songs)
        elsif command == 'play'
          play(songs)
        elsif command == 'help'
          help()
        elsif command == 'exit'
          exit_jukebox()
        end
    end
end
run(songs)
