require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
   "Hello #{params[:name]}!" 
   #@user_name = params[:name]
    #"Hello #{@user_name}!"
  end

  get "/goodbye/:name" do 
    "Goodbye, #{params[:name]}."
    # @user_name = params[:name]
    # "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do 

    "#{params[:num1].to_i * params[:num2].to_i}"
    # @num1 = params[:num1].to_i
    # @num2 = params[:num2].to_i 
    # @total = @num1 * @num2
    # @total = @total.to_s 
    # "#{@total}"
  end
end