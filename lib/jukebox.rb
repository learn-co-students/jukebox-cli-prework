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

def play(songs) #plays a song from songs
    puts "Please enter a song name or number:"
    selection = gets.chomp
    songs.each.with_index do |title, index|
      track = "#{index+1}"
      if selection == title || selection == track
        puts "Playing #{title}"
      else
        puts "Invalid input, please try again"
      end
    end
end

def help #lists help functions
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs) #list songs avaiable
  songs.each.with_index do |title, track|
    puts "#{track+1}. #{title}"
  end
end

def exit_jukebox #exits the jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp.downcase
  case command
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else
    puts "Invalid Command"

  end

end

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#user_name = gets.chomp

#puts say_hello(user_name.capitalize)
