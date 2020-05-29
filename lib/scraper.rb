require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
      student details = {}
      student_details[name] = student.css("h4.student-name").text
      student_details[location] = student.css("p.student-location").text
      student_details[profile_url] = student.css("a").attribute("href").value


  end

  def self.scrape_profile_page(profile_url)

  end

end
