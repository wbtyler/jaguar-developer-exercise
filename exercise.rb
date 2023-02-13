class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Assume exactly one space between words and no more than one punctuation mark at the end of a word.
    # Also assume that /\w/ matches any non-punctuation character in a word.
    words = str.split(" ")
    ndx = 0
    while ndx < words.length
      word = words[ndx]
      punct = word[-1]
      if /\w/.match(punct)
        punct = ""
      else
        word = word[0...word.length-1]
      end
      if word.length > 4
        first = word[0]
        if first == first.upcase
          word = "Marklar"
        else
          word = "marklar"
        end
        words[ndx] = word + punct
      end
      ndx += 1
    end
    return words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  # The even Fibonacci numbers are exactly every third value of the sequence.
  def self.even_fibonacci(nth)
    if nth < 3   # don't throw error on negative or zero input
      return 0
    end
    sum = 0
    f1 = 1
    f2 = 1
    n = 2
    while n < nth
      n += 3
      f3 = f1 + f2
      sum += f3
      # now step to the next even Fibonacci
      f1 = f2 + f3
      f2 = f3 + f1
    end
    return sum 
  end

end
