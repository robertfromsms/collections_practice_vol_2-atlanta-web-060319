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
    uni_ele.each {|key, value|
      answer.push({key => value, :count => array.count(uni_ele)})
    }
  }
  return answer
end


def merge_data(keys, data)
  keys.each {|person|
    data.each {|dude|
      if dude.has_key?(person[:first_name])
        dude[person[:first_name]].each {|trait, value|
          person[trait] = value
        }
      end
    }
  }
  return keys
end

def find_cool(thing)
  answer = []
  thing.each {|person|
    if person[:temperature] == "cool"
      answer.push(person)
    end
  }
  return answer
end

def organize_schools(schools)
  locations = []
  organized_school_hash = {}
  schools.each {|school, char|
    locations.push(char[:location])
  }
  locations.uniq.each {|location|
    organized_school_hash[location] = []
  }
  organized_school_hash.each {|location, school_list|
    schools.each {|school, char|
      if char[:location] == location
        school_list.push(school)
      end
    }
  }
  return organized_school_hash
end
