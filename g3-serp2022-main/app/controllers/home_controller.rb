class HomeController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  require 'mechanize'
  require 'action_view'


  #PAGE_URL = "https://en.wikipedia.org/wiki/Emma_Watson"

  #PAGE_URL = "https://en.wikipedia.org/wiki/Barack_Obama"

  def index
  end

  def result
    @PAGE_URL = params[:a5]
    doc = Nokogiri::HTML(open(@PAGE_URL))
    #doc = Nokogiri::HTML(open(PAGE_URL))
    # @data4 = comment_params[:data4]
    @abc = doc.css('.infobox-data')

  end


end
# agent = Mechanize.new
# agent.pluggable_parser.pdf = Mechanize::FileSaver

# page = agent.get("https://www.instagram.com/accounts/login/?force_classic_login")

# form = page.form_with(:id => 'form-login-page')
# form.login = "__.archieverma.__"
# form.password = "Chrisarchie114!"
# page = form.submit

# step 2, get the PDF:
# page.parser.xpath('//th/a').each do |link|
#   agent.get link['href']
#end
# agent = Mechanize.new
# agent.user_agent_alias = 'Mac Safari 4'
# agent.get('https://www.instagram.com') do |page|

#   agent = Mechanize.new
# agent.get('https://www.instagram.com/accounts/login/?force_classic_login')
# agent.page.forms[0]['username'] = '__.archieverma.__'
# agent.page.forms[0]['password'] = 'Chrisarchie114!'
# agent.page.forms[0].submit

#   mypage = page.form_with(action: 'action tag') do |form|
#     form['user[name]'] = '__.archieverma.__'
#     form['user[pwasswd]']  = 'Chrisarchie114!'
#   end.submit

# username_field = form.field_with(:name => "user_session[username]")
# username_field.value = "whatever_user"
# password_field = form.field_with(:name => "user_session[password]")
# password_field.value = "whatever_pwd"
# form.submit

  # If you want to parse the result
  # doc = Nokogiri::HTML(mypage.content.toutf8)
  # h1_text = doc.css('h1').text

# end

# If you want to get other page after logged in
# other_page = agent.get('URL in some other page)
# doc = Nokogiri::HTML(mypage.content.toutf8)
# h1_text = doc.xpath('h1').text


 

