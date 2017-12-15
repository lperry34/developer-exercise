class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    answer = str.split
    answer.each do |i|
      if i.length > 4
        punctuation = i.match(/[[:punct:]]$/)
        if i[0] =~ /[A-Z]/
          i.replace ('Marklar' + punctuation.to_s)
        else
          i.replace ('marklar' + punctuation.to_s)
        end
      end
    end
    return answer.join(" ")
  end


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
   start = [1,1]
   i = 1
   sum = 0
   while i < (nth - 1) do
     start.push(start[i] + start[(i-1)])
     i += 1
   end
   start.each do |i|
     if i.even?
       sum = sum + i
     end
   end
   return sum
  end
end
