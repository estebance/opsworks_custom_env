if node[:opsworks][:instance][:layers].include?('rails-app')
  include_recipe "opsworks_custom_env::restart_command"
  include_recipe "opsworks_custom_env::write_config"
  include_recipe "opsworks_custom_env::compile_assets"
end
