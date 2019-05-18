def begins_with_r(array)
  button = true
  answer = []
  array.each {|element|
    if element[0] != "r"
      button = false
    end
  }
  return button
end

def contain_a(array)
  answer = []
  array.each {|element|
    answer.push(element) if element.split("").include?.include?("a")
  }
  return answer
end
