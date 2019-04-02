class MyHeroesPage < SitePrism::Page

  elements :choose_hero, :xpath, "//*[@id='my-heroes']//a[contains(text(), 'Conversar')]"

  def random_hero
    choose_hero[rand(0..5)].click
  end

end