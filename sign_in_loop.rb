require 'mechanize'
agent = Mechanize.new

page = agent.get('http://catmeanings.herokuapp.com/')

puts "Signing in & out forever..."

loop do
  puts ''
  page = page.link_with(text: 'Sign In or Up').click

  sign_in_form = page.forms.last
  sign_in_form.email = ENV['CATMEANINGS_USERNAME']
  sign_in_form.password = ENV['CATMEANINGS_PASSWORD']

  puts "  signing in"
  page = agent.submit(sign_in_form, sign_in_form.buttons.first)
  sleep 5

  puts "  signing out"
  page = page.link_with(text: 'Sign Out').click
  sleep 5
end
