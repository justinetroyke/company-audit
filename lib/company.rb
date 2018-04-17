require_relative 'employee'

class Company

  attr_reader :employees,
              :projects,
              :timesheets,
              :success

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(file_path)
    CSV.foreach(file_path) do |row|
      if row.length != 5
        @success_status = {success: true, error: nil}
      else
        @success_status = {success: false, error: 'bad data'}
      end
       @ employees << Employee.new(row[0], row[1],
   end
  end
end
