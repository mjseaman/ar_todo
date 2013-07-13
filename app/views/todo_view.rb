
require 'cowsay'
require 'lolcat'


def print_out(text)
  # puts Cowsay.say(text)
  # puts text
  Lol.cat(Cowsay.say(text).each_line, {animate: true, duration: 10, speed: 100, os: 3, spread:3, freq: 1})
end
