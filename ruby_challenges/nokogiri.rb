require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich'))

list = doc.css("span.ingredient-label, span.ingredient-measurement").inner_html

puts list