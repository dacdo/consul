#
# Cookbook Name:: my_consul
# Spec:: default
#

require 'spec_helper'

describe 'my_consul::default' do

  context 'When all attributes are default, on Redhat 7' do
    platform 'redhat'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
  
end
