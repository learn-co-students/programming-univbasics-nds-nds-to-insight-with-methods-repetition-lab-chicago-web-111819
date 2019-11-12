$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  array = [] 
  first_index = 0 
  while first_index < source.length do 
    array << source[first_index][:name]
    first_index += 1 
  end 
  return array
  # Write this implementation
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  sum = 0 
  first_index = 0 
  while first_index < list_of_directors(source).length do 
    sum += directors_totals(source)[list_of_directors(source)[first_index]]
    first_index += 1 
  end
  return sum
  
end

pp list_of_directors(directors_database)
