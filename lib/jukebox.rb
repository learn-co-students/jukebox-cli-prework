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

puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  case response
  when "1" || "Phoenix - 1901"
    puts "Phoenix - 1901"
  when "2" || "Tokyo Police Club - Wait Up"
    puts "Tokyo Police Club - Wait Up"
  when "3" || "Sufjan Stevens - Too Much"
    puts "Playing Sufjan Stevens - Too Much"
  when "4" || "The Naked and the Famous - Young Blood"
    puts "Playing The Naked and the Famous - Young Blood"
  when "5" || "(Far From) Home - Tiga"
    puts "Playing (Far From) Home - Tiga"
  when "6" || "The Cults - Abducted"
    puts "Playing The Cults - Abducted"
  when "7" || "Phoenix - Consolation Prizes"
    puts "Playing Phoenix - Consolation Prizes"
  when "8" || "Harry Chapin - Cats in the Cradle"
    puts "Playing Harry Chapin - Cats in the Cradle"
  when "9" || "Amos Lee - Keep It Loose, Keep It Tight"
    puts "Playing Amos Lee - Keep It Loose, Keep It Tight"
  when "Phoenix - 1901"
    puts "Phoenix - 1901"
  when "Tokyo Police Club - Wait Up"
    puts "Tokyo Police Club - Wait Up"
  when "Sufjan Stevens - Too Much"
    puts "Playing Sufjan Stevens - Too Much"
  when "The Naked and the Famous - Young Blood"
    puts "Playing The Naked and the Famous - Young Blood"
  when "(Far From) Home - Tiga"
    puts "Playing (Far From) Home - Tiga"
  when "The Cults - Abducted"
    puts "Playing The Cults - Abducted"
  when "Phoenix - Consolation Prizes"
    puts "Playing Phoenix - Consolation Prizes"
  when "Harry Chapin - Cats in the Cradle"
    puts "Playing Harry Chapin - Cats in the Cradle"
  when "Amos Lee - Keep It Loose, Keep It Tight"
    puts "Playing Amos Lee - Keep It Loose, Keep It Tight"
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
answer = gets.chomp

case answer
  when "help"
    help()
  when "list"
    list()
  when "play"
    play()
  when "exit"
    exit_jukebox()
  else
    puts "Invalid input, please try again."
    run(songs)
  end

end
