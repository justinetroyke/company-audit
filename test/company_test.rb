require './test/test_helper'
require './lib/company'

class CompanyTest < Minitest::Test
  attr_reader :company

  def setup
    @company = Company.new
  end

  def test_class_exists
    assert_instance_of Company, company
  end

  def test_it_holds_employees_in_array
    assert_equal [], company.employees
  end

  def test_it_holds_projects_in_array
    assert_equal [], company.projects
  end

  def test_it_holds_timesheets_in_array
    assert_equal [], company.timesheets
  end
end
