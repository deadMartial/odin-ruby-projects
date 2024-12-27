def substrings(s,dict)
  hash=Hash.new
  s=s.downcase
  dict.each do |word|
    if s.downcase.include?(word.downcase)
      hash[word.downcase]=s.scan(word.downcase).length
    end
  end
  hash.each{|k,v|}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)