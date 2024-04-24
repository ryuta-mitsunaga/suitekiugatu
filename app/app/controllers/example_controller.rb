class ExampleController < ActionController::Base
  def get
    render json: { message: "Hello, World!"}
  end
end
