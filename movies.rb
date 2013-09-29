movies = {
    avatar: 4,
    inception: 4,
    horeee: 1
}

done = false

while (!done)
  puts "What would you like to do?"

  choice = gets.chomp
  case choice
  when "add"
      puts "What movie do you want to add?"
      title = gets.chomp
      title = title.to_sym
      if movies[title.to_sym] == nil
          puts "What is the rating?"
          rating = gets.chomp
          rating = rating.to_i
          movies[title] = rating
          puts "Added!"
      else
          puts "Error! Movie already exists"
      end
  when "update"
      puts "What movie do you want to update?"
      title = gets.chomp
      title = title.to_sym
      puts "What is the new rating?"
      new_rating = gets.chomp
      if movies[title.to_sym] != nil
          new_rating.to_i
          movies.delete(title)
          movies[title] = new_rating

          puts "Updated!"    
      else
          puts "Error! Movie not found"
      end

  when "display"
      movies.each { |title, rating| puts "#{title}: #{rating}"}
  when "delete"
      puts "What movie do you want to delete?"
      title = gets.chomp.to_s
      title = title.to_sym
      if movies[title] == nil
          puts "Error! Movie not found"
      else
          movies.delete(title)
          puts "Deleted"
      end
  when "done"
    done = true
  else
      puts "Error!"
  end
end