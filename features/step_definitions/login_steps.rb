Quando("eu faço login com {string} e {string}") do |email, password|
  @loginpage.go 
  @loginpage.login(email,password)
end

Então("devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token.length).to be 147
end

Então("devo ver {string} na área logada") do |expect_name|
  @sidebarview.logged_user
  expect(user.text).to eql expect_name
end

Então("não devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token.length).to be 147
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  expect(@loginpage.alert).to eql expect_message
end