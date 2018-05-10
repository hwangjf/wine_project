
def my_review(wine_id)
  puts "Please enter a rating 1 to 5."
  # add integer case statement check for integer within range
  rating = gets.chomp
  puts "Please enter a comment(150 character limit)."
  comment = gets.chomp
  # binding.pry
  Review.create(rating: rating, comment: comment, user_id: $my_id, wine_id: wine_id)
  puts "Thank you for the review!"
  puts "Please select a number:"
  puts "1. See my reviews"
  puts "2. See more wines"
  puts "3. Wish list"
  puts "4. Exit"
  num = gets.chomp.to_i
  if num == 1
    see_reviews
  elsif num == 2
    choose_category
  elsif num == 3
    #wish list
  else num == 4
    exit
  end
end

def see_reviews
  the_reviews = User.find($my_id).reviews
  # binding.pry
  i = 1
  the_reviews.each do |review_object|
    review_hash = review_object.attributes
    review_hash.each do|key,value|
      if key == "wine_id"
        puts "#{i}. name: " + Wine.find(review_hash["wine_id"]).name
      end
    end
    review_hash.each do|key,value|
      if key == "rating"
        puts "#{key}: #{value}"
      end
      if key == "comment"
        puts "#{key}: #{value}"
      end
    end
    i += 1
  end
  puts ""
  puts "Press enter to continue."
  gets.chomp

  puts "Please select a number: "
  puts "1. Edit review"
  puts "2. Delete review"
  puts "3. See more wines"
  puts "4. Exit"
  num = gets.chomp.to_i
  if num == 1
    edit_review
  elsif num == 2
    delete_review
  elsif num == 3
    choose_category
  elsif num == 4
    return
  end
end

def edit_review
  the_reviews = User.find($my_id).reviews
  n = 1
  the_reviews.each do |review_object|
    review_hash = review_object.attributes
    review_hash.each do|key,value|
      if key == "wine_id"
        puts "#{n}. name: " + Wine.find(review_hash["wine_id"]).name
      end
    end
    review_hash.each do|key,value|
      if key == "rating"
        puts "#{key}: #{value}"
      end
      if key == "comment"
        puts "#{key}: #{value}"
      end
    end
    n += 1
  end
  puts ''
  puts "Please enter a number for the review you would like to edit:"
  num = gets.chomp.to_i
  edit_selection = the_reviews[num-1]
  puts "Please enter a rating."
  rating = gets.chomp

  User.find($my_id).reviews[num-1].update_attribute(:rating, rating)
  puts "Please enter a comment."
  comment = gets.chomp
  # edit_selection.rating = rating
  User.find($my_id).reviews[num-1].update_attribute(:comment, comment)

  edited_selection = User.find($my_id).reviews[num-1]
  edited_hash = edited_selection.attributes
  edited_hash.each do|key,value|
    if key == "wine_id"
      puts "name: " + Wine.find(edited_hash["wine_id"]).name
    end
  end
  edited_hash.each do|key,value|
    if key == "rating"
      puts "#{key}: #{value}"
    end
    if key == "comment"
      puts "#{key}: #{value}"
    end
  end
  puts "Please select a number: "
  puts "1. Edit review"
  puts "2. See more wines"
  puts "3. Exit"
  num = gets.chomp.to_i
  if num == 1
    edit_review
  elsif num == 2
    choose_category
  else num == 3
    return
  end

end

def delete_review
  the_reviews = User.find($my_id).reviews
  n = 1
  the_reviews.each do |review_object|
    review_hash = review_object.attributes
    review_hash.each do|key,value|
      if key == "wine_id"
        puts "#{n}. name: " + Wine.find(review_hash["wine_id"]).name
      end
    end
    review_hash.each do|key,value|
      if key == "rating"
        puts "#{key}: #{value}"
      end
      if key == "comment"
        puts "#{key}: #{value}"
      end
    end
    n += 1
  end
  puts ''
  puts "Please enter a number for the review you would like to delete:"
  num = gets.chomp.to_i

  puts "Are you sure you would like to delete this review?"
  puts "Please enter a number:"
  puts "1. Delete this review, I made a huge mistake!"
  puts "2. Oops, I just want to see more wine!"
  puts "3. I just want to go home."
  confirmation = gets.chomp.to_i
  if confirmation == 1
    User.find($my_id).reviews[num-1].delete
    puts "Review has been successfully deleted.\n"
    puts "Please select a number:"
    puts "1. View more wines."
    puts "2. Exit"
    num_one = gets.chomp.to_i
    if num_one == 1
      choose_category
    else num_one == 2
      exit
    end
  elsif confirmation == 2
    choose_category
  else confirmation == 3
    puts "Bye bye"
    return
  end
end

# def add_to_favorites
#
# end
