class MoviePage
    include Capybara::DSL

    def add
    find('.nc-icon nc-simple-add')
    end

    def create (title)
        find('input[name="title"]')
    end


end