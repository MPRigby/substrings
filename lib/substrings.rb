#lib/substrings.rb
def substrings(input, substrings)
  input.downcase!
  output = {}
  if substrings.empty? == false
    substrings.each do |substring|
      count = input.scan(substring).length
      if count != 0
        output[substring] = count
      end
    end
  end
  output
end
