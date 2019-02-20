class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    newArr = Array.new
    arr = str.split(' ')
    
    for s in arr

      if s.length > 4

        if s === s.capitalize 
           newArr.push('Marklar')
        end

        if s[-1, 1] === '?' 
          newArr.push('marklar?')
        elsif s[-1, 1] === '.'
          newArr.push('marklar.')
        elsif s != s.capitalize
          newArr.push('marklar')
        end

      end

      if s.length < 5 
        newArr.push(s)
      end

    end
    str = newArr.join(' ').to_s
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
     # TODO: Implement this method
    newArr = Array.new
    arr = (1..nth -1).inject([0,1]) { |acc| acc << acc.last(2).inject(:+) }

    for i in arr
      if i % 2 == 0
        newArr.push(i)
      end
    end
    newArr.reduce(0) { |a,b| a + b }
  end
end
