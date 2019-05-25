

if(node['postgresql']['enable_pgdg_yum']) and platform_family?('rhel')
  include_recipe 'postgresql::yum_pgdg_postgresql'
end

node['postgresql']['client']['packages'].each do |pg_pack|
  package pg_pack
end
