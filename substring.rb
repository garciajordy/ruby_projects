dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
def substrings(word, array)
  word = word.downcase # puts input to lowercase
  arr = {} # create a hash to store values
  array.each { |each| # literate through all words of the given array
    if word.include?(each) # check if the words exist before adding it
      arr[each] = word.scan(each).length # add the word plus the amount of times it got found in the array into the new hash

    end
  }
  arr # return the hash
end
