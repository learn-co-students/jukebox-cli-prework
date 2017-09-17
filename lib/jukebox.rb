#!/usr/bin/env ruby

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

def list(ary)
  ary.each.with_index { |song, idx| puts "#{idx + 1}. #{song}" }
end

def play(ary)
  puts "Please enter a song name or number:"
  response = gets.strip

  length = ary.length
  idx = ary.index(response)

  if (1..length).cover?(response.to_i)
    puts "Playing #{ary[response.to_i - 1]}"
  elsif idx
    puts "Playing #{ary[idx]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(ary)
  help
  response = nil
  until response.to_s.downcase == 'exit'
    puts "Please enter a command:"
    response = gets.strip
    case response.downcase
    when 'help'
      help
    when 'list'
      list(ary)
    when 'play'
      play(ary)
    when 'exit'
      exit_jukebox
    end
  end
end
