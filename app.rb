require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @words = params["user_phrase"]
        @piglatinizer = PigLatinizer.new
        @pigified = @piglatinizer.piglatinize(@words)
        erb :piglatinized
    end

end