class ApplicationController < ActionController::Base
  def square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def square_results
    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def squareroot_form
    render({ :template => "calculation_templates/squareroot_form.html.erb" })
  end

  def squareroot_results
    render({ :template => "calculation_templates/squareroot_results.html.erb" })
  end

  def payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def payment_results
    render({ :template => "calculation_templates/payment_results.html.erb" })
  end

  def random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def random_results
    render({ :template => "calculation_templates/random_results.html.erb" })
  end
end
