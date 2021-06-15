class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDed2+Ic3kXCHPT3SNHTp2AoC1t8TY8nV3VcVq3pyVhLzU5CLrUuyjAlWV7Pk+ekeLehQTTBZa42tQ9c4sHkJruJBTIRgfZ4Jvu9D7gy8B924inPbyM4eLv0V1siZvnqnHRYv1lP/O10EiWJfmUM3DovBj0qTvivPJmkcvnxZtNeENBGZ1tLoSbONOML14tVNL5CikJyDGCa35URTYvE9JKjNj2VjLVHRtmRwG/UD3r2LhtoeSRRybhwHPG6tNo5sKNUtdS5CUJw+ZYtV2fSzHO1KduYduY9sj2qEkVV0ymjekCFwXtWusoCFAc5xwBYmzVC4BG9b0pNzH5MLFhUFo7',
	}  
} 
