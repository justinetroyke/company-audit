require_relative 'file_loader'
require_relative 'parser'

class Company
  include FileLoader
  include Parser

  attr_reader :employees,
              :projects,
              :timesheets

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(filename)
    load_file(filename)
    binding.pry
  end
end
