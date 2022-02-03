# frozen_string_literal: true

require 'student'
require 'course'

RSpec.describe Student, '#stubs' do
  it '#finished?' do
    student = described_class.new
    course = Course.new
    allow(student).to receive(:finished?).with(an_instance_of(Course)).and_return(true)

    course_finished = student.finished?(course)

    expect(course_finished).to be_truthy
  end
end
