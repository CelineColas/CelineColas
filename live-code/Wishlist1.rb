require "csv"
require "open-uri"
require "nokogiri"

FILE_NAME = "list.csv"


def scrape_amazon(url)
  item_price = []
  doc = Nokogiri::HTML(open("#{url}"))

  element =  doc.css('#productTitle').text
    item =  element.strip
    item = item.gsub("\n","")
    item_price << item
  element = doc.css('#priceblock_ourprice').text
    item_price << element
  item_price
end





def save_file(item)
  CSV.open(FILE_NAME, "a") do |i|
    i << item
  end
end

def read_file(wishlist)
  CSV.foreach(FILE_NAME) do |i|
    wishlist << i
  end
  wishlist
end

def display_items_of(wishlist)
  puts "Empty" if wishlist.empty?
  wishlist.each_with_index do |item, index|
    puts "#{index+ 1}) #{item[0]} #{item[1]}"
  end
end

wishlist = []
wishlist = read_file(wishlist)
keep_going = true
while keep_going
  puts "What do you want to do? [list|add|quit]"
  action = gets.chomp

  case action
  when "list"
    display_items_of(wishlist)
  when "add"
    puts "What's the amazon url of what you want to add ? ?"
    url = gets.chomp
    choice = scrape_amazon(url)
    wishlist << choice
    save_file(choice)
  when "quit"
    keep_going = false
  else
    puts "Wrong action. Not in [list|add]"
  end
end
