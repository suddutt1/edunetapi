# API layer for EDUNET Blockchain Network

# Setup steps

1. Download and setup blockchain network first under /home/blockchain/edunet/network folder

2. Download and setup api with the following instructions

```sh
cd /home/blockchain/edunet/api
git clone git@github.com:suddutt1/edunetapi.git .  # DO NOT MISS THE DOT(.)
chmod +x xclient
```

3. Make sure following /etc/hosts entries are present

```sh

127.0.0.1	ca.iitj.ac.in        
127.0.0.1	ca.iitkjp.ac.in     
127.0.0.1	ca.edunet.net       
127.0.0.1	orderer0.edunet.net
127.0.0.1	peer0.iitj.ac.in    
127.0.0.1	peer0.edunet.net    
127.0.0.1	peer0.iitkjp.ac.in  

```

## To start the api layer

```sh

cd /home/blockchain/edunet/api
./launchapi.sh
./registerusers.sh 

```
