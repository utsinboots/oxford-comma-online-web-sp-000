def oxford_comma(array)
  #values = ""
  case array.size
  when 1
    values = array.join 
  when 2
    values = array.join(" and ")
  when 3
    #array_last_delete = ""
    array_last_delete = array.delete(array.last)
    values = array.join(", ") + "and " + array_last_delete
  end
  values
end