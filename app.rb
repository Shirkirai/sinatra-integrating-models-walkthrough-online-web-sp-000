require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do

    @analyed_text = TestAnalyzer.new(params[:user_text])
    @word_count = @analyzed_text.count_of_words

    erb :results
  end
end
