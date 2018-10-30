
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new # new instance of PigLatinizer class
    @piglatin = pl.piglatinize(params[:user_phrase])
    # calls #piglatinize method from PigLatinizer class and feeds it params[:user_phrase] as the argument
    erb :results
  end

end
