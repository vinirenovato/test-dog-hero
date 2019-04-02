class HomePage < SitePrism::Page

  set_url "https://www.doghero.com.br/"
  element :access_account, '.profile .btn.link-underline'
  element :access_my_heroes, '.btn.btn-default.link-underline'

end