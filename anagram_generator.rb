class AnagramGenerator

  attr_reader :string, :split_string

  def initialize(string)
    if string == " " || string.length == 1
      raise "Invalid string"
    elsif string.length == 2
      @string = string.downcase.reverse
    else 
      @string = string
      @split_string = @string.downcase.split("")
      display_anagrams
    end
  end

  def factorial(num)
    return 1 if num.zero?
    (1..num).reduce(:*)
  end

  def display_anagrams
    anagrams = []
    10000.times do 
      unless anagrams.include?(@split_string.shuffle.join(""))
        anagrams << @split_string.shuffle.join("") 
      end
    end
    anagrams.delete(@string)
    puts anagrams.uniq.sort
  end

end

AnagramGenerator.new("ab")