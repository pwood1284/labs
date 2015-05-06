

#Brit's solution

#seq should be an array

def destutter2(seq)
  result = []  #result will be a new array
  last = nil   #keep track of last thing

  seq.each do |item|
    if item != last
      result.push(item)
      #result << item
    end
    last = item
  end
  result
end

x = [1,2,2,3,4,2,2,2]

destutter2(x)
