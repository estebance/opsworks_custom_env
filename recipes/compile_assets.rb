node[:deploy].each do |application, deploy|
  Chef::Log.info("Precompiling Rails assets")
  execute 'rake assets:precompile' do
    cwd "#{deploy[:deploy_to]}/curent/"
    command 'bundle exec rake assets:precompile'
    environment 'RAILS_ENV' => deploy[:rails_env]
  end
end
