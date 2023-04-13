class ApplicationController < ActionController::Base
  def square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def square_results
    @num = params.fetch("square_number").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def squareroot_form
    render({ :template => "calculation_templates/squareroot_form.html.erb" })
  end

  def squareroot_results
    @num = params.fetch("squareroot_number").to_f
    @squareroot_of_num = @num ** (0.5)

    render({ :template => "calculation_templates/squareroot_results.html.erb" })
  end

  def payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def payment_results
    @num_apr = params.fetch("apr_number").to_f
    @apr_per_period = (@num_apr / 100) / 12
    @num_years = params.fetch("years_number").to_f.round(3)
    @num_principal = params.fetch("principal_number").to_f

    @monthly_payment = ((@apr_per_period * @num_principal) / (1 - (1 + @apr_per_period) ** (-12 * @num_years)))

    @num_apr = @num_apr.to_s(:percentage, precision: 4)
    render({ :template => "calculation_templates/payment_results.html.erb" })
  end

  def random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def random_results
    @min = params.fetch("minimum_number").to_f
    @max = params.fetch("maximum_number").to_f

    @random_num = rand(@min...@max)
    render({ :template => "calculation_templates/random_results.html.erb" })
  end
end
