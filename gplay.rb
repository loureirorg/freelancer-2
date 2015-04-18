# encoding: utf-8
require 'open-uri'
require 'pp'
require 'nokogiri'

puts "Write some text to search (e.g.: candy):"
q = gets.chomp  
url = "https://play.google.com/store/search?q=#{q}"
doc = Nokogiri::HTML(open("#{url}"))

doc.css('.card-list .apps .details h2').each do |item|
  p item.text.strip
end