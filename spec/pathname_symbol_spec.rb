require 'backports'
require_relative 'spec_helper'
require_relative '../lib/celebration'

describe 'Pathname and Symbol integration' do
  describe Pathname do
    describe '.new' do
      it 'should accept a symbol' do
        lambda{ Pathname.new(:some_path) }.should_not raise_exception
      end

      it 'should result in a relative path' do
        Pathname.new(:some_path).should be_relative
      end

      it 'should result in a path with the symbol at the top' do
        Pathname.new(:some_path).to_s.should == 'some_path'
      end
    end

    describe '#+' do
      it 'should accept a symbol' do
        lambda{ Pathname.new('/top') + :some_path }.should_not raise_exception
      end

      it 'should add the symbol to the path' do
        (Pathname.new('/top')+:some_path).to_s.should match(%r(/some_path$))
      end
    end
  end
end
