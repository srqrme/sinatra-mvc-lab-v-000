class PigLatinizer 
  attr_reader :user_phrase
  
  def initialize(user_phrase)
    if @user_phrase.split(" ").length == 1
      piglatinize_phrase(user_phrase)
    else
      piglatinize_phrase(user_phrase)
  end


end