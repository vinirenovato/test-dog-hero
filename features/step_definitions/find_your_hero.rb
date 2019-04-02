Given("I'm on the home of the brazilian site") do
  @home_page = HomePage.new
  @home_page.load
  expect(page.driver.browser.current_url).to include(".br")
end

Given("I click on enter") do
  @home_page.access_account.click
end

Given("I sign in") do |table|
  table.hashes.each do |row|
    @login_page = LoginPage.new
    step 'I click on enter'
    @login_page.do_login(row[:user], row[:password])
  end
end

When("I find on My Heroes") do
  @home_page.access_my_heroes.click
end

Then("I choose a favorite hero and I click on talk") do
  @my_heroes = MyHeroesPage.new
  @my_heroes.random_hero
end

Then("I'm at reservation page") do
  page.driver.browser.switch_to.window  page.driver.browser.window_handles.last
  expect(page).to have_css('#reservation')
end

Then ("I get an error message") do |message|
  expect(@login_page.error_message.text).to eql(message)
end