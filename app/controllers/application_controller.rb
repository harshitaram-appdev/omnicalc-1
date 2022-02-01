class ApplicationController < ActionController::Base

  def blank_square_form
    render ({:template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square 
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2

    render ({:template => "calculation_templates/square_results.html.erb"})
  end 

  def blank_square_root
    render ({:template => "calculation_templates/square_root_form.html.erb"})
  end 

  def calculate_square_root
    @num = params.fetch("red").to_f
    @square_root_of_num = Math.sqrt(@num)
    render ({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def random_form
    render ({:template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("bluemonk").to_f
    @upper = params.fetch("redmonk").to_f
    @random = rand(@lower..@upper)
    render ({:template => "calculation_templates/random_results.html.erb"})
  end

  def payment_form
    render ({:template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("bluemonk").to_f
    @years = params.fetch("redmonk").to_i
    @principal = params.fetch("greenmonk").to_f
    @numerator = @principal * (@apr / 1200)
    @denominator = 1 - ((1 + (@apr / 1200)) ** (-12 * @years))
    render ({:template => "calculation_templates/payment_results.html.erb"})
  end 



end
