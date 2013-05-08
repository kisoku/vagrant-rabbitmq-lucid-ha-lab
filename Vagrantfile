# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  cluster_nodes = {
    :eric     => '115',
    :frank    => '116'
  }

  cluster_nodes.each_pair do |node, ip_suffix|
    config.vm.define node do |cluster_node|
      cluster_node.vm.box = "Ubuntu lucid 32"
      cluster_node.vm.box_url = "http://files.vagrantup.com/lucid32.box"
      cluster_node.vm.network :hostonly, "192.168.122.#{ip_suffix}"
      cluster_node.vm.network :hostonly, "192.168.133.#{ip_suffix}"

      cluster_node.vm.customize ['createhd', '--filename', "drbd_vdi_#{ip_suffix}.vdi", '--size', 10 * 1024]
      cluster_node.vm.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', "drbd_vdi_#{ip_suffix}.vdi"]

      cluster_node.vm.forward_port 22, "22#{ip_suffix}".to_i

      cluster_node.vm.host_name = "#{node.to_s}"
      cluster_node.vm.provision :shell, :path => "provision.sh"

      cluster_node.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "cookbooks"
        chef.add_recipe "apt"
        chef.add_recipe "timezone"
        chef.add_recipe "ntp"
        chef.add_recipe "erlang"
        chef.add_recipe "rabbitmq"
        chef.add_recipe "lucid-ha-backports"
      end
    end
  end
end
