require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)

    site = Nokogiri::HTML(open(index_url))

    all = []

    #binding.pry
    students = site.css(".student-card")
    students.each do |student_info|
        name = student_info.css("h4.student-name").text
        location = student_info.css("p.student-location").text
        profile_url = student_info.css("a").attr("href").text
        hash = {:name => name, :location => location, :profile_url => profile_url}
        all << hash
      end
  all
end

  def self.scrape_profile_page(profile_url)
    site = Nokogiri::HTML(open(profile_url))

    student_profiles = {}

    social_media_link = doc.css(".vitals-container .social-icon-container a")

    

  end
end
