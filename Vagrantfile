Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"

  # Configuración básica de la VM
  config.vm.define "tierra" do |tierra|
    tierra.vm.network "private_network", ip: "192.168.56.103"
    
    # Configuración de Ansible
    tierra.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "1.8"
      ansible.playbook = "ansible/server.yml"
      ansible.inventory_path = "ansible/hosts"
    end
  end

  config.vm.define "mercurio" do |mercurio|
    mercurio.vm.network "private_network", ip: "192.168.56.101"
    
  end

  config.vm.define "venus" do |venus|
    venus.vm.network "private_network", ip: "192.168.56.102"
    
  end

  config.vm.define "marte" do |marte|
    marte.vm.network "private_network", ip: "192.168.56.104"
    
  end
end