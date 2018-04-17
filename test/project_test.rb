require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test
  attr_reader :project

  def setup
    @project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')
  end

  def test_class_exists
    assert_instance_of Project, project
  end

  def test_it_has_project_id
    assert_equal 123, project.id
    assert_equal Integer, project.id.class
  end

  def test_it_has_project_name
    assert_equal 'Widget Maker', project.name
  end

  def test_it_has_project_start_date
    expected = Date.parse('2015-01-01')

    assert_equal expected, project.start_date
  end

  def test_it_has_project_end_date
    expected = Date.parse('2018-01-01')

    assert_equal expected, project.end_date
  end
end
