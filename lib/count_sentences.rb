require 'pry'

class String

attr_accessor :sentence, :question, :exclamation 

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    all_words = self.split(" ")
    sentence_enders = all_words.select do |word|
      word.sentence? || word.question? || word.exclamation?
    end
    sentence_enders.size
  end
end