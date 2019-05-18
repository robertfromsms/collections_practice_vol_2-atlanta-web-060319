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
    end
  }
end

def remove_non_strings(array)
  answer = []
  array.each {|element|
    if element.class == String
      answer.push(element)
    end
  }
  return answer
end

def count_elements(array)
  answer = []
  array.uniq.each {|uni_ele|
    answer.push({uni_ele, count: array.count(uni_ele)})
  } 
  return answer
end