# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    key, value = name_hash.first
    lowest = [key, value]
    name_hash.each { |key, value|
        if value < lowest[1]
            lowest[0] = key
            lowest[1] = value
        end}
    lowest[0]
end
