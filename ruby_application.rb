

restaurants = Hash.new

puts "What would you like to do?"
puts "-- Type 'add' to add a restaurant."
puts "-- Type 'update' to update a restaurant."
puts "-- Type 'display' to display all restaurants."
puts "-- Type 'delete' to delete a restaurant."
puts "-- exit to leave the restaurant_rater."
choice = gets.chomp


case choice
when "add"
    puts "Add restaurant name here"
     restaurant = gets.chomp.to_sym
if restaurants[restaurant.to_sym].nil?
    puts "What's it's category?"
     category = gets.chomp
     if (category == "korean" || category == "chinese" || category == "japanese" || category == "western")
        restaurants[restaurant] = category
    else
        puts "Error! category is korean/chinese/japanese/western!"
        puts "What's it's category?"
        category = gets.chomp
    end
     puts "What's it's menu?"
     menu = gets.chomp
     restaurants[restaurant] = menu
     puts "What's it's rating ?"
     rating = gets.chomp.to_i
     if (rating == 0 || rating == 1 || rating == 2 || rating == 3 || rating == 4 || rating == 5)
        restaurants[restaurant] = rating
    else
        puts "Error! rathig range is 0~5!"
        puts "What's it's rating ?"
        rating = gets.chomp.to_i
    end
   puts "#{restaurant} has been added with #{category}, #{menu}, #{rating}"
else
    puts "That restaurant already exists!"
    puts "#{restaurant} had been added with #{category}, #{menu}, #{rating}"
end
when "update"
    puts "What's your restaurant name?"
    restaurant = gets.chomp
    if restaurants[restaurant].nil?
        puts "Error!"
    else
        restaurants[title] = rating
        puts "#{restaurant} update with #{category}, #{menu}, #{rating}"
    end
when "display"
    restaurants.sort
    restaurants.each do |restaurant, rating|
        puts "#{restaurant}: #{category}, #{menu}, #{rating}"
    end
when "delete"
    puts "Which restaurant name would you like to remove?"
    restaurant = gets.chomp.to_sym
    if
        restaurants[restaurant.to_sym].nil?
        puts "That's not in the hash!"
    else
        restaurants.delete(restaurant.to_sym)
        puts "That restaurant has been deleted"
    end
    puts "Error!"
end
end
