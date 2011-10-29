require 'backports'
require_relative 'spec_helper'
require_relative '../lib/celebration/corext/symbol'

describe Symbol do
  describe '#to_path' do
    it 'should return the text of the symbol' do
      :some_path.to_path.should == 'some_path'
    end
  end

  describe '#to_str' do
    case RUBY_VERSION
    when /^1\.8/
      it 'should return the text of the symbol' do
        :some_path.to_str.should == 'some_path'
      end
    else
      it 'should not exist' do
        :some_path.should_not respond_to(:to_str)
      end
    end
  end
end
