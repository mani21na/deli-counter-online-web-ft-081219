# Write your code here.

latz_deli = []

def line(array)
  if array.size != 0
    new_array = []
    array.each_with_index{|name, index| new_array << "#{index+1}. #{name}"}
    puts "The line is currently: " + new_array.join(" ")
  else
    puts "The line is currently empty."
  end
end

def take_a_number(array, string)
  if array.index(string) == nil
    array << string
  end
  puts "Welcome, #{string}. You are number #{array.index(string)+1} in line."
 end
 
def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end
