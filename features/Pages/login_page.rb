class LoginPage
    include Capybara::DSL

def go
    visit "/"  
end   
def login (email,password)
    find("#emailId").set 'email'
    find("#passId").set 'password'
    click_button "Entrar"
end

def alert
    find(".alert").text
end

end