def caesar(word, shift)
  split = word.split("") # spliting the string in characters
  alpha = ("a".."z").to_a # array of the alphabet
  alphab = ("A".."Z").to_a # array of alphabet in CAPS
  split.map! { |let| # changing each character
    if alpha.include?(let.downcase) # putting the characters in downcase and looking for the index
      i = alpha.index(let.downcase)
      i += shift
     if i >= 26 # if the character index is higher than 26 it will start from index 1
      i -= 26
     end
    end

    if alpha.include?(let) # checking if char is downcase
      let = alpha[i] # changing char with shift
    elsif alphab.include?(let) # checking if char is upcase
      let = alphab[i]          # changing char with shift
    else let = let # if char is not a letter it will stay the same.
    end
  }
  word = split.join("") # changing the array back to a word
end
