control "my_consul-1.0" do    # A unique ID for this control
  impact 1.0                             # Just how critical is
  title "Hello World"                    # Readable by a human
  desc "Service Example"                 # Optional description

  describe service('sshd') do            # The actual test
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end

control "my_consul-2.0" do    # A unique ID for this control
  impact 1.0                             # Just how critical is
  title "Hello World"                    # Readable by a human
  desc "port.where example"              # Optional description

  # Using .where{} specifies a block in which one (or more) attributes
  # scope the test to ports that match those attributes
  describe port.where { protocol =~ /tcp/ && port > 22 && port < 80 } do
    it { should_not be_listening }
  end
end

control "my_consul-3.0" do    # A unique ID for this control
  impact 1.0                             # Just how critical is
  title "Hello World"                    # Readable by a human
  desc "Or example using describe.one"   # Optional description

  # Using describe.one, you can test for a or b.
  # The control will be marked as passing if EITHER condition is met.
  describe.one do
    describe sshd_config do
      its('Protocol') { should eq('3') }
    end
    describe sshd_config do
      its('Protocol') { should eq('2') }
    end
  end
end
