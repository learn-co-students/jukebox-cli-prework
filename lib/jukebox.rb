require "pry"

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
  puts "- help : display this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"

end

def list(songs)

  songs.each_with_index do |songs, i|
    puts "#{i}. #{songs}"

  end
end

def play(songs)

  puts "Please enter a song name or number:"
  user_choice = gets.chomp

      if songs.include?(user_choice)
           puts "Playing #{user_choice}"

        elsif (1..songs.length).to_a.include?(user_choice.to_i)

         puts "Playing #{songs[user_choice.to_i-1]}"
       else
         puts "Invalid input, please try again"

      end
   end



def exit_jukebox
puts "Goodbye"
end


def run(songs)
  help
  user_response = ""
  while user_response
    puts "Please enter a command:"
  user_response = gets.chomp

    case user_response
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
      list(songs)
    when "exit"
     exit_jukebox
     break
   else
     help
   end
 end
end
