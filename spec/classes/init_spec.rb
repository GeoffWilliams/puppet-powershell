require 'spec_helper'
describe 'powershell' do
  context 'with default values for all parameters' do
    it { should contain_class('powershell') }
  end
end
