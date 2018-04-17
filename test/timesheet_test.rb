require './test/test_helper'
require './lib/timesheet'

class TimesheetTest < Minitest::Test
  attr_reader :timesheet

  def setup
    @timesheet = Timesheet.new('5', '7', '2015-01-01', '120')
  end

  def test_class_exists
    assert_instance_of Timesheet, timesheet
  end

  def test_it_has_employee_id
    assert_equal 5, timesheet.employee_id
    assert_equal Integer, timesheet.employee_id.class
  end

  def test_it_has_project_id
    assert_equal 7, timesheet.project_id
    assert_equal Integer, timesheet.project_id.class
  end

  def test_it_has_date
    expected = Date.parse('2015-01-01')

    assert_equal expected, timesheet.date
  end

  def test_it_has_time
    assert_equal Integer, timesheet.minutes.class
    assert_equal 120, timesheet.minutes
  end
end
