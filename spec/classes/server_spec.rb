require "#{File.join(File.dirname(__FILE__),'..','spec_helper')}"

describe 'perforce::server' do

  it { should contain_file('/usr/bin/p4d').with_owner('perforce') }

end
