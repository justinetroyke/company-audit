require_relative 'employee'
require 'csv'

class Company

  attr_reader :employees,
              :projects,
              :timesheets,
              :success_status

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(file_path)
    CSV.foreach(file_path) do |row|
      if row.length != 5
        @success_status = {success: false, error: 'bad data'}
      else
        @success_status = {success: true, error: nil}
      end
      @employees << Employee.new(row[0], row[1], row[2], row[3], row[4])
    end
    @success_status
  end
end
