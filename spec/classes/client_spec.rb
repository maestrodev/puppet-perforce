require "#{File.join(File.dirname(__FILE__),'..','spec_helper')}"

describe 'perforce::client' do

  it { should contain_file('/usr/local/bin/p4') }

end
