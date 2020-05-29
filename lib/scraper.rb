require 'open-uri'
require 'pry'

class Scraper
  html = open('https://learn-co-curriculum.github.io/student-scraper-test-page/index.html')
  @site = Nokogiri::HTML(html)
  def self.scrape_index_page(index_url)
    all = []
    @site.css("div.roster-cards-container").each do |info|
      title = info.css("div.student-card").text
      all[title] = {
        :name => info.css("h4.student-name").text
        :location => info.css("p.student-location").text
        :profile_url => info.css("a href")

      end
      all
  end

  def self.scrape_profile_page(profile_url)

  end

end
