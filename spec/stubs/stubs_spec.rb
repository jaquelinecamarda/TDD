# frozen_string_literal: true

require 'student'
require 'course'

describe  'Stub' do
  it '__' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'Argumentos Dinâmicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        'olá'
      elsif arg == :hi
        'Hii'
      end
    end

    expect(student.foo(:hello)).to eq('olá')
    expect(student.foo(:hi)).to eq('Hii')
  end

  it 'Qualquer instancia de classe' do
    student = Student.new
    student_2 = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(student_2.bar).to be_truthy
  end
  it 'Erros' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect{ student.bar }.to raise_error(RuntimeError)
  end
end
