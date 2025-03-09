# TASK: implement caesar chipper
# INPUTS: string, shifter
# OUTPUTS: chipped_string

# EXAMPLE:
# caesar("What a string", 5)
# => "Bmfy f xywnsl!"

# ALGORITHM:
# 1. Convert string to characters (String.split(""))
# 2. Convert characters to numbers (String.ord)
# 3. Convert numbers to shifted numbers
# 4. Convert shifted numbers to chars (Integer.chr)
# 5. Convert characters to string (Array.join(""))

require 'pry-byebug'

def caesar_cipher(string, shift)

  shifted_chars = string.chars.map do |char|
    if char.match?(/[A-Z]/)
      (((char.ord - 65 + shift) % 26) + 65).chr
    elsif char.match?(/[a-z]/)
      (((char.ord - 97 + shift) % 26) + 97).chr
    else
      char
    end 
  end.join("")
  
end

puts caesar_cipher("What a string!", 5)

