require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)

    site = Nokogiri::HTML(open(index_url))

    all = []

    students = site.css("div.roster-cards-container")
    students.each do |info|
      name = info.css("h4.student-name").text
      location = info.css("p.student-location").text
      profile_url = info.css("a").attr("href").text
      hash = {:name => name,
      :location => location,
      :profile_url => profile_url
    }
    all << hash
  end
  all
  binding.pry
end

  def self.scrape_profile_page(profile_url)

  end
end
