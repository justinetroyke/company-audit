require './test/test_helper'
require './lib/company'
require './lib/file_loader'

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

  def test_it_can_load_employess_from_file
    expected = {success: true, error: nil}
    assert_equal expected, company.load_employees('./data/employees.csv')
  end
end


# Parameters: String
# Returns: Hash
# Read all data from filename in CSV format. Only add its contents to company.employees if ALL data in the file is valid. If any data is invalid, you should immediately return an error INSTEAD of saving the data. A test file for bad employee data has been provided.
#
# This method should return a hash. A success key in the hash will contain a boolean letting us know if the whole file imported correctly or not. An error key, if success is false, will tell us why the import failed.
#
# Return value examples:
#
# {success: true, error: nil}
# {success: false, error: 'bad data'}
