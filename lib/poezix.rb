require "poezix/version"

class String
    def upon_a_midnight_dreary
      if self == "once"
        1.times do
          yield
        end        
      elsif self == "twice"
        2.times do
          yield
        end
      elsif self == "thrice"
        3.times do
          yield
        end
      else
        raise "Mayhaps an Integer you seek?"
      end
    end
end


class Integer
  def upon_a_midnight_dreary
    self.times do
      yield
    end
  end
end



def quoth(phrase = "Nevermore")
  puts phrase.upcase + "!!!"
end



def poesem_ipsum(number_of_lines = "full")
  all_texts = File.dirname(__FILE__) + "/texts/*.txt"
  #all_texts = Dir["./texts/*.txt"]
  number_of_texts = all_texts.size
  selection = rand(1..number_of_texts)

  text = File.open(all_texts[selection]).readlines #An Array

  if number_of_lines == "full"
    number_of_lines = text.count - 1
  end

  text[0..number_of_lines].join
end