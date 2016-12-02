require 'pry'

class String

  def sentence?
    self[self.length-1] == "." ? true : false
  end

  def question?
      self[self.length-1] == "?" ? true : false
  end

  def exclamation?
      self[self.length-1] == "!" ? true : false
  end

  def count_sentences
    counter = 0

    self.split(" ").each do |sentence|
      if sentence.sentence? || sentence.question? || sentence.exclamation?
        counter += 1
      end
    end

    counter
  end
end
