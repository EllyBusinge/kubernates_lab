Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "centos7"
    app.vm.hostname = 'app'
   

    app.vm.network  "private_network", ip: "192.168.56.100"

    app.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2012]
      v.customize ["modifyvm", :id, "--name", "app"]
    end
  end

  config.vm.define "web" do |web|
    web.vm.box = "centos7"
    web.vm.hostname = 'web'


    web.vm.network  "private_network", ip: "192.168.56.101"

    web.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2012]
      v.customize ["modifyvm", :id, "--name", "web"]
    end
  end
  
 config.vm.define "db" do |db|
    db.vm.box = "centos7"
    db.vm.hostname = 'db'


    db.vm.network  "private_network", ip: "192.168.56.102"

    db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2012]
      v.customize ["modifyvm", :id, "--name", "db"]
    end
  end
end
