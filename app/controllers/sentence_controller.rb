class SentenceController < ApplicationController
  def random
    @sentenceTitle = "Fixed random paragraph"
    @randomTitle = "Varying random sentence" 
    
    @sentence = "He used am complaints.  Him door locked him the was beg parents ready powerful hearing food still.  Go pleasure all becoming even little leftovers he although.  But the fluid already peg they a out charwoman recover as shortcoming outside lady to give muster."
    @rsentence = Word.find(rand(Word.count + 1)).name.capitalize
    @uniqueWordCount = Word.count
    @totalWordCount = BookWord.count
    for i in 0..(5 + rand(10))
      # @rsentence = @rsentence + " " + Word.find(rand(Word.count.to_i() +1)).name 
      @rsentence = @rsentence + " " + Word.find(BookWord.find(rand(BookWord.count.to_i() +1)).wordid).name
    end
    @rsentence = @rsentence + "."
  end
  def index
  end
  def new
  end
  
  
end
