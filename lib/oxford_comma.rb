require 'pry'
=begin
#Try 1
def oxford_comma(array)
  index = 0
  until index < array.size
    if index == 0
      string = array.join
    binding.pry  
    elsif index > 0 && index == array.size - 1
      string = array.join("and")
    else
      string = array.join(", ")
    end
    #binding.pry
    index += 1
  end
end

#Try 2
def oxford_comma(array)
  count = 0
  if array.size > 1 && count == array.size - 1
    values.push array.split("and")
    puts values
  else 
    values.push array.split
    puts values
  end
  count += 1
end    
=end

def oxford_comma(array)
  values = ""
  case array.size
  when 1
    values = array.join 
  when 2
    values = array.join(" and ")
  when 3
    array_last_delete = ""
    array_last_delete = array.delete!(array.last)
    values = array.join(", ") + "and " + array_last_delete
  end
  values
end