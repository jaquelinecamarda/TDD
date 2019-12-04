require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    #setup
    student = Student.new

    #verify fake
    expect(student).to receive(:bar)
    
    #exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).twice #espera 2 vezes o metodo invocado
    student.foo(123)
    student.foo(123)
  end

  it 'return' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true) #espera 123 do metodo
    student.foo(123)
  end
end