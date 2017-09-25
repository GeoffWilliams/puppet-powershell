require 'puppet/provider/exec'
require 'puppet/provider/exec/shell'

Puppet::Type.type(:exec).provide :powershell, :parent => Puppet::Provider::Exec do
  include Puppet::Util::Execution
  desc "mock exec provider for powershell that does nothing"

  def run(command, check = false)
    mock_output = Puppet::Util::Execution::ProcessOutput.new("mock",0)

    return mock_output, mock_output
  end

  def validatecmd(command)
    true
  end
end
