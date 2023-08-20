address_book = { 
    "nashville" => "615",
    "norfolk" =>  "757",
    "cinicnnati" =>  "859",
    "neworleans" =>  "504",
    "louisville" =>  "502",
    "boston" =>  "617",
    "newyork" =>  "212",
    "edison" =>  "908",
    "miami" =>  "305",
    "orlando" => "407"
}

def get_city_names(hash)
hash.keys
end

def get_area_code(hash, key)
hash[key]
end

loop do
puts "Do you want to look up a area code based on city name? (Y/N)"
answer = gets.chomp.downcase
break if answer != "y"
puts "Which city do you want to look up?"
puts get_city_names(address_book)
puts "Enter the city"
prompt = gets.chomp
if address_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(address_book, prompt)}"
    else 
        puts "#{prompt} is not in our database."
    end
end