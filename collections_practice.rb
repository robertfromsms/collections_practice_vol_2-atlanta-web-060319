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
    answer.push(element) if element.split("").include?("a")
  }
  return answer
end

def first_wa(array)
  array.each {|element|
    if element[0..1] == "wa"
      return element
  }
end
