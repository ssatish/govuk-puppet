require_relative '../../../../spec_helper'

describe 'govuk::node::s_apt' do
  let(:facts) {{
    :concat_basedir => '/var/lib/puppet/concat/',
  }}
  let(:hiera_data) {{
    'app_domain'   => 'app.domain',
    'asset_root'   => 'asset.root',
    'website_root' => 'website.root',
  }}
  let(:node) { 'apt-1.management.somethingsomething' }
  let(:pre_condition) { 'govuk::mount { "/root/dir": }' }

  describe 'real_ip_header' do
    context 'when not specified' do
      let(:params) {{
        :root_dir => '/root/dir',
      }}
      it 'should not configure nginx with real_ip_header directive' do
        should contain_nginx__config__site('apt.cluster').without_content(/real_ip_header/)
      end
    end
    context 'when specified with true_client_ip value' do
      let(:params) {{
        :real_ip_header => 'True-Client-IP',
        :root_dir       => '/root/dir'
      }}
      it 'should configure nginx with real_ip_header directive' do
        should contain_nginx__config__site('apt.cluster').with_content(/real_ip_header True-Client-IP;$/)
      end
    end
  end
end