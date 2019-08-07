require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end
    post '/piglatinize' do 
        @input = params["user_phrase"]
        @piglatinizer = PigLatinizer.new
        @piglatin = @piglatinizer.piglatinize(@input)
        erb :piglatinize
    end
end