require "csv"

FILE_NAME = "list.csv"

def save_file(item)
  CSV.open(FILE_NAME, "a") do |i|
    i << [item]
  end
end

def read_file(wishlist)
  CSV.foreach(FILE_NAME) do |i|
    wishlist << i[0]
  end
  wishlist
end

def display_items_of(wishlist)
  puts "Empty" if wishlist.empty?
  wishlist.each_with_index do |item, index|
    puts "#{index+ 1}) #{item}"
  end
end

wishlist = []
wishlist = read_file(wishlist)

while true
  puts "What do you want to do? [list|add]"
  action = gets.chomp

  case action
  when "list"
    display_items_of(wishlist)
  when "add"
    puts "What do you want to add?"
    choice = gets.chomp
    wishlist << choice
    save_file(choice)
  else
    puts "Wrong action. Not in [list|add]"
  end
end
