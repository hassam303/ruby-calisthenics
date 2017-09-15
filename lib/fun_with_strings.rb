module FunWithStrings
  def palindrome?
    return self.downcase.gsub(/[^\w]/,"").reverse == self.downcase.gsub(/[^\w]/,"")
  end
  
  def count_words
    self.gsub!(/[.!?\\-\\-\\,]/, '')
    words = self.split 
    hash = Hash.new(0)
    
    words.each do |word|
      hash[word.downcase] +=1
    end 
    return hash
  end
  
  def anagram_groups
    rtnArr = Array.new
    words = self.split
    
    i=0 
    while i < words.length do
      tempArr = [words[i]]
      j = i+1
      while j < words.length do
        if words[i].chars.sort.join == words[j].chars.sort.join
          tempArr.push(words[j])
        end 
        
        if j == words.length-1
          rtnArr.push(tempArr)
        end 
        
        j+=1
      end 
      i+=1
    end 
    return rtnArr
  end
  
end 

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
