require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reversed = params[:name].reverse
    "#{reversed}"    
  end

  get '/square/:number' do
    squared = params[:number].to_i**2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    phrase_loop = ""
    params[:number].to_i.times do
      phrase_loop += "#{params[:phrase]}\n"
    end
    phrase_loop
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation].downcase == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation].downcase == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation].downcase == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end