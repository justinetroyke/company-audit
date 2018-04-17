class Timesheet
  attr_reader :employee_id,
              :project_id,
              :date,
              :minutes

  def initialize(employee_id, project_id, date, time)
    @employee_id = employee_id.to_i
    @project_id = project_id.to_i
    @date = Date.parse(date)
    @minutes = time.to_i
  end
end
