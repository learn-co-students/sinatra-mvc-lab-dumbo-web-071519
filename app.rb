require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @input = params.values[0]
    word = PigLatinizer.new
    word.piglatinize(@input)
  end

end
