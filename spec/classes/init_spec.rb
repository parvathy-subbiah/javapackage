require 'spec_helper'
describe 'javapackage' do
  context 'with default values for all parameters' do
    it { should contain_class('javapackage') }
  end
end
