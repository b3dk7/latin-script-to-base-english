require 'csv'
$key = Hash.new
#grades["Dorothy Doe"] = 9
#key = {}


CSV.foreach("mappings.csv") do |row|
    $key[row[0]] = row[1].split('')
end


            
            
candidate= "aǎz'`’r ᶀazjian".split('')


$l_array = []

$key.each do |key, value|
  
    value.each do |x|
        $l_array << x
    end
    
    #puts "The hash key is #{key} and the value is #{value}."
end



def is_funky(word)
    $l_array.each do |char|
        if word.include? char
            return true
        end
    end
    return false
end


def replace(letter)
    $key.each do |key, value|
        value.each do |val|
            if letter == val
                return key
            end
        end
    end
    return letter
end




i=0
candidate.each do |char|
    candidate[i] = replace(candidate[i])
    i+=1
end



$l_array << "‘"
$l_array << "'"
$l_array << "`"
$l_array << "’"

=begin
CSV.foreach("places.csv") do |row|
    place = row[0]
    if is_funky(place)
        puts row
    end
end
=end


CSV.foreach("dirty-places.csv") do |row|
    place = row[0]
    place = place.split('')
    i=0
    place.each do |char|
        place[i] = replace(place[i])
        i+=1
    end
    puts place.join('').gsub("‘","").gsub("'","").gsub("`","").gsub("’","").downcase
        
end




#puts candidate

#puts l_array

#l_array.detect do |e| 
    #if l_array.count(e) > 1
        #puts e 
    #end
#end
#puts candidate

#puts $key["c"]



# gsub all these = ‘'`’
