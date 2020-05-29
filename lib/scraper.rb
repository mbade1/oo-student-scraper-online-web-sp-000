require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open('https://learn-co-curriculum.github.io/student-scraper-test-page/')
    site = Nokogiri::HTML(html)

    all = []

    students = site.css("div.roster-cards-container")
    students.each do |info|
      name = info.css("h4.student-name").text
      location = info.css("p.student-location").text
      profile_url = info.css("a").attr("href").text
      binding.pry
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
