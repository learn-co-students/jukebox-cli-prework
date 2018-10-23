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

#The help Method
def help
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

#The list Method
def list(songs)
  songs.each.with_index do |x, i|
    puts "#{i+1}. #{x}"
  end
end

#The play Method
def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if songs.any? {|song| song == user_response}
    song1 = songs.select {|song| song == user_response}
    puts "Playing #{song1}"
  elsif user_response.to_i >= 1 && user_response.to_i <= 9
    song2 = songs[user_response.to_i-1]
    puts "Playing #{song2}"
  else
    puts "Invalid input, please try again"
  end
end

#The exit_jukebox Method
def exit_jukebox
  puts "Goodbye"
end

#The run Method

def run(songs)
  help
  user1 = ""
  until user1 == "exit" do
    puts "Please enter a command:"
    user1 = gets.chomp
      if user1 == "list"
        list(songs)
      elsif user1 == "play"
        play(songs)
      end
  end
  exit_jukebox
end