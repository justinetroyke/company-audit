require './test/test_helper'
require './lib/employee'

class EmployeeTest < Minitest::Test
  attr_reader :employee

  def setup
    @employee = Employee.new('5', 'Sally Jackson', 'Engineer', '2015-01-01', '2018-01-01')
  end

  def test_class_exists
    assert_instance_of Employee, employee
  end

  def test_it_has_employee_id
    assert_equal 5, employee.id
    assert_equal Integer, employee.id.class
  end

  def test_it_has_employee_name
    assert_equal 'Sally Jackson', employee.name
  end

  def test_it_has_employee_role
    assert_equal 'Engineer', employee.role
  end

  def test_it_has_employee_start_date
    expected = Date.parse('2015-01-01')

    assert_equal expected, employee.start_date
  end

  def test_it_has_employee_end_date
    expected = Date.parse('2018-01-01')

    assert_equal expected, employee.end_date
  end
end
