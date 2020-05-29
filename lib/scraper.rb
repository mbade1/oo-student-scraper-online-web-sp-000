require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open('https://learn-co-curriculum.github.io/student-scraper-test-page/')
    site = Nokogiri::HTML(html)

    all = []

    students = site.css("div.roster-cards-container")
    students.each do |info|
      name = student.css(".student-name").text
      location = student.css(".student-location").text
      profile_url = student.css("a").attr("href").text
      hash = {:name => name,
      :location => location,
      :profile_url => profile_url
    }
    all << hash
  end
  all
end

  def self.scrape_profile_page(profile_url)

  end
end
