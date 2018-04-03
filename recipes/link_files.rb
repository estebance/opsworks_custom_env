node[:deploy].each do |application, deploy|
  execute "link files #{application} for custom env" do
    link "#{deploy[:deploy_to]}/current/config/application.yml" do
      to "#{deploy[:deploy_to]}/shared/config/application.yml"
      link_type :hard
    end
  end

end
