require 'pry'


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
    #binding.pry
    index += 1
  end

 total
end

def list_of_directors(source)

           more_directors = []
           index_name = 0
 #binding.pry
                    while  index_name < source.length do 
                    more_directors << source[index_name][:name] 
                    index_name += 1
                    end 
                    
                    
     more_directors               
     #binding.pry              
   end
                    
  def total_gross(source)
             director_money_hash = directors_totals(source)
             director_name_array = list_of_directors(source)
             director_index = 0
              money = 0

              while director_index < director_name_array.length do
               array = director_name_array[director_index]
               money =+ director_money_hash[array]
               money =+ 1
   end
 money
 end

# Should use methods:
# 1. directors_totals: returns a Hash of { dir_name => gross }
# 2. list_of_directors: names provides an Array of directors names (use
#
# Visit each key (i.e. director name), look up the value in the hash
# returned by directors_totals, and add it to a running total. When done,
# return the total

