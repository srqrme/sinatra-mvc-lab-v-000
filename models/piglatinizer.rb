class PigLatinizer 
  
  def initialize(user_phrase)
    if user_phrase.split(" ").length == 1
      piglatinize_phrase(user_phrase)
    else
      piglatinize_phrase(user_phrase)
    end
  end
  
  def piglatinize_phrase(user_phrase)
    if vowel?(user_phrase[0])
      user_phrase = user_phrase + "w"
    elsif !vowel?(user_phrase[0]) && !vowel?(user_phrase[1]) && !vowel?(user_phrase[2])
      user_phrase = user_phrase.slice(3..-1) + user_phrase.slice(0,3)
    elsif !vowel?(user_phrase[0]) && !vowel?(user_phrase[1])
      user_phrase = user_phrase.slice(2..-1) + user_phrase.slice(0,2)
    else
      user_phrase = user_phrase.slice(1..-1) + user_phrase.slice(0)
    end
    
    user_phrase << "ay"
  end
  
    def vowel?(letter)
    letter.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_phrase(string)
    string.split.collect { |word| piglatinize_input(word) }.join(" ")
  end
end