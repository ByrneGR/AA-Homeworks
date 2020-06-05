


def sluggish_octopus(arr) #bubble sort
  sorted = false

  while !sorted
    sorted = true
     (0...arr.length - 1).each do |index|
        if arr[index].length > arr[index+1].length
          arr[index], arr[index+1] = arr[index+1], arr[index]
          sorted = false
        end
      end
    end       
    arr.last
end  


def dominant_octopus(arr) #quick sort
  return [] if arr.empty?
  return arr if arr.length == 1
  pivot = arr.first

  left = arr.select {|ele| ele.length < pivot.length}
  right = arr.select.drop(1) {|ele| ele.length >= pivot.length}

  result = dominant_octopus(left) + [pivot] + dominant_octopus(right) 
  result.uniq
end  




def clever_octopus(arr)
# arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

  max = 0
  i = 0
  while i < arr.length 
    if arr[max].length < arr[i].length 
      max = i
    end
  i += 1
  end    
  arr[max]
end  




p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
