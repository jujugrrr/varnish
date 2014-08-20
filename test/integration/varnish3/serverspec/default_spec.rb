# Encoding: utf-8

require_relative 'spec_helper'

describe service('varnish') do
  it { should be_enabled }
  it { should be_running }
end
describe port(6081) do
  it { should be_listening }
end
describe file('/usr/lib/varnish/vmods/libvmod_statsd.so') do
  it { should be_file }
end
