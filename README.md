# Compiling The Provider
### [More details about the provider](https://github.com/akamai/terraform-provider-akamai "terraform-provider-akamai" target="_blank")
## Prerequisite

- Inastall [Vagrant](https://www.vagrantup.com/intro/getting-started/install.html)
- Clone the repo

```
git clone https://github.com/chavo1/akamai-provider.git
cd akamai-provider
vagrant up
vagrant ssh
sudo su -
```
## Clone source to $GOPATH.
```
mkdir -p $GOPATH/src/github.com/akamai
cd $GOPATH/src/github.com/akamai
git clone https://github.com/akamai/terraform-provider-akamai.git
```
## Change to source directory, install vendor dependencies, and build provider.
```
cd $GOPATH/src/github.com/akamai/terraform-provider-akamai
make dep-install
make build
```
## Test with:
```
cd ~/go/src/github.com/akamai/terraform-provider-akamai/examples/akamai_fastdns_zone/add-records
terraform init -plugin-dir=$GOPATH/bin
```
## The compiled plugin is on 
```
ls $GOPATH/bin
dep  terraform-provider-akamai
```
