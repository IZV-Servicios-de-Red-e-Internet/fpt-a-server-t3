Vagrant.configure("4") do |config|
  # Configuración básica de la VM
  config.vm.define "tierra" do |tierra|
    tierra.vm.box = "debian/bookworm64"
    tierra.vm.network "private_network", ip: "192.168.56.103"
    tierra.vm.network "private_network", ip: "192.168.56.105"
    
    # Configuración de Ansible
    dns.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "1.8"
      ansible.playbook = "ansible/sites.yml"
      ansible.inventory_path = "ansible/hosts"
    end
  end

  config.vm.define "mercurio" do |mercurio|
    mercurio.vm.box = "debian/bookworm64"
    mercurio.vm.network "private_network", ip: "192.168.56.101"
    
    # Configuración de Ansible
    mercurio.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "1.8"
      ansible.playbook = "ansible/sites.yml"
      ansible.inventory_path = "ansible/hosts"
    end
  end

  config.vm.define "venus" do |venus|
    venus.vm.box = "debian/bookworm64"
    venus.vm.network "private_network", ip: "192.168.56.102"
    
    # Configuración de Ansible
    venus.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "1.8"
      ansible.playbook = "ansible/sites.yml"
      ansible.inventory_path = "ansible/hosts"
    end
  end

  config.vm.define "marte" do |marte|
    marte.vm.box = "debian/bookworm64"
    marte.vm.network "private_network", ip: "192.168.56.104"
    
    # Configuración de Ansible
    marte.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "1.8"
      ansible.playbook = "ansible/sites.yml"
      ansible.inventory_path = "ansible/hosts"
    end
  end
end