require 'pry'

# your code goes here
def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  results = []
  array.each do |word|
    if word.include?("a")
      results << word
    end
  end
  results
end

def first_wa(words)
  words.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(words)
  results = []
  words.each do |word|
    if word.is_a?(String)
      results << word
    end
  end
  results
end

def count_elements(words)
  results = []
  words.each do |item|
    # binding.pry
    if results.any? { |result| result[:name] == item[:name] }
      results.each do |result|
        # binding.pry
        if result[:name] == item[:name]
          result[:count] += result[:count]
        end
      end
    else
      item[:count] = 1
      results << item
    end
  end
  results
end

def merge_data(keys, data)
  data.each do |datum|
    datum.each do |person|
      # binding.pry
      keys.each do |key|
        if key[:first_name] == person[0]
          key[:awesomeness] = person[1][:awesomeness]
          key[:height] = person[1][:height]
          key[:last_name] = person[1][:last_name]
        end
      end
    end
  end
  keys
end

def find_cool(cool)
  results = []
  cool.each do |person|
    # binding.pry
    if person[:temperature] == "cool"
      results << person
    end
  end
  results
end

def organize_schools(schools)
  results = {}

  schools.values.each do |location|
    results[location[:location]] = []
  end

  schools.each do |school, details|
    results.each do |result, array|
      # binding.pry
      if result == details[:location]
        array << school
      end
    end
  end
  results
end
