require 'mechanize'
agent = Mechanize.new

page = agent.get('http://catmeanings.herokuapp.com/')

page = page.link_with(text: 'Sign In or Up').click

sign_in_form = page.forms.last
sign_in_form.email = ENV['CATMEANINGS_USERNAME']
sign_in_form.password = ENV['CATMEANINGS_PASSWORD']

puts "Signing in"
page = agent.submit(sign_in_form, sign_in_form.buttons.first)

loop do
  puts ''

  puts '  visiting a cat profile'
  page = page.links_with(href: %r{/cats}).first.click
  sleep 5

  puts '  visiting home page'
  page = page.link_with(href: '/').click
  sleep 5
end
