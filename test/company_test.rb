require './test/test_helper'
require './lib/company'
require './lib/employee'

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

  def test_it_can_upload_file
    company.load_employees('./data/employees.csv')

    assert_equal 'Susan Smith', company.employees[0].name
  end

  def test_it_can_show_successful_uploads_from_file
    expected = {success: true, error: nil}

    assert_equal expected, company.load_employees('./data/employees.csv')
  end

  def test_it_can_show_failure_of_upload
    expected = {success: false, error: 'bad data'}

    assert_equal expected, company.load_employees('./data/bad_employees.csv')
  end
end
