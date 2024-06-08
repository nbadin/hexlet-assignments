# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'


class StackTest < Minitest::Test
  # BEGIN
  def setup
    @stack = Stack.new
  end

  def teardown
  end

  def test_empty
    assert { @stack.empty? }
    @stack.push!('asdf')
    @stack.push!(1234)
    @stack.clear!
    assert { @stack.empty? == true }
  end

  # def test_push
  #   @stack.push!('asdf')
  #   assert { @stack.to_a == ['asdf'] }
  # end
  #
  # def test_size
  #   @stack.push! '1'
  #   @stack.push! 42
  #   assert { @stack.size == 2 }
  # end
  #
  # def test_pop
  #   @stack.push! 'asdf'
  #   @stack.push! 'qwer'
  #   assert { @stack.size == 2 }
  #   assert { @stack.pop! == 'qwer' }
  #   assert { !@stack.empty? }
  #   assert { @stack.pop! == 'asdf' }
  #   assert { @stack.empty? }
  #   assert { @stack.pop!.nil? }
  # end

  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
