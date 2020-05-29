require 'open-uri'
require 'pry'

class Scraper
  html = open('https://learn-co-curriculum.github.io/student-scraper-test-page/index.html')
  site = Nokogiri::HTML(html)
  def self.scrape_index_page(index_url)

  end

  def self.scrape_profile_page(profile_url)

  end

end
