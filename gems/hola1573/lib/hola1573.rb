# The main Hola1573 driver
class Hola
  # the obligatory hello worlde!
  #
  # Usage:
  #   >> Hola.hi("spanish")
  #   => hola mundo
  #
  # Arguments:
  #   language: (String) 

  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require 'hola/translator'
