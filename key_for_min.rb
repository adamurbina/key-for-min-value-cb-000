# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

def key_for_min_value(name_hash)
    key, value = name_hash.first
    lowest = [key, value]
    binding.pry
    key_for_min_value.each { |key, value|
        if value < lowest[1]
            lowest[0] = key
            lowest[1] = value
        end}
    lowest[0]
end

key_for_min_value({"adam" => 1, "nata" => -1})
