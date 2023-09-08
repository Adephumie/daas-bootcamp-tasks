# BASIC NETWORK ON UBUNTU SERVER

## Static or Dynamic IP.

IP address attached to a cerver or a computer gives it's network an individual and distinctive address that it uses to stay connected to the internet and for sending and recieving data.

Dynamic IPs are those addresses that chnage from time to time depending on the network they are connected to while,

Staic IPs don't change once they are assigned to the server.

To check if you have a static or dynamic IP on Ubuntu:

```
ip a | grep dynamic
```

If it's dynamic, you should have something like this:

```
inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic enp0s3
```

OR use:

```
ip route list default | grep dhcp
```

Result:

```
default via 10.0.2.2 dev enp0s3 proto dhcp src 10.0.2.15 metric 100 
```

The static command will return nothing in both cases if it's a dynamic IP address.

```
ip route list default | grep static

ip a | grep static
```

## Setting Hostname
I am using a vagrant Ubuntu machine and by default, the hostname set for the Ubuntu 20.04 server was `ubuntu-focal`. To change the name, I have two option:

1. Use the hostnamectl command. 
2. Use the Vagrantfile for the VM.

To use the Vagrantfile approach method:

Add this line to the file:

```
config.vm.hostname = "your-preffered-name"
```

Then you will reload and ssh into the machine with:

```
vagrant reload VM-ID

vagrant ssh VM-ID
```

However, if you were already in the vagrant's project directory holding the Vagrantfile of the VM, Just do:

```
vagrant reload

vagrant ssh
```

To get the vagrant machine's ID, on your MacOS or Windows terminal, run:

```
vagrant global-status
```

This `vagrant global-status` command can be run from any directory on the terminal.