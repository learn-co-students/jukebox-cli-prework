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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)



def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  song = gets.chomp
  if song.is_a? String
    songs.each do |s|
      if s.include?(song)
        puts s
        return s
      else
        puts "Invalid input, please try again"
        return "Invalid input, please try again"
      end
    end
  elsif song.is_a? Numeric
    if song > songs.length
      /Invalid input, please try again/
      puts "Invalid input, please try again"
      return "Invalid input, please try again"
    else
      songs.each_index do |s|
        puts songs[s]
        return songs[s]
      end
    end
  end

end

def list(songs)
  puts songs

end

def exit_jukebox
  puts "Goodbye"

end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "help"
    help
  when "list"
    list
  when "play"
    play
  when "exit"
    exit_jukebox
  end

end
