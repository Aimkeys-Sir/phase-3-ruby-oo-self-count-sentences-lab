require 'pry'

class String
  def report_on_self
    "I am: #{self}"
  end

  def sentence?
    self.match(/[.]$/)?true:false
  end

  def question?
    self[-1]=="?"
  end

  def exclamation?
    self[-1]=="!"
  end

  def count_sentences
    self.scan(/\w+[.?!]/).length
  end
end
puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences