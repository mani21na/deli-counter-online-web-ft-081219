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

#solution
def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."
    deli.shift
  end
end