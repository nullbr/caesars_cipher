require_relative 'lib/caesarCipher'

cipher = CaesarCipher.new
puts cipher.caesar_cipher(gets.chomp, gets.chomp.to_i)
