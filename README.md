# FreePBX on Docker

### Image includes

 * phusion/baseimage (Ubuntu 14.04)
 * LAMP stack (apache2, mysql, php)
 * Asterisk 13
 * FreePBX 13
 


### Run your FreePBX image

#### 1st time

```bash
cd /tmp/
mkdir docker-freepbx
cd docker-freepbx
wget https://raw.githubusercontent.com/micmay/docker-freepbx/master/docker-compose.yml

docker-compose up -d
```
**Wait for a few minutes. The installation of freepbx starts with the first container startup!**

Got to http://localhost:8082 to follow the installation.

Once successfull go to http://localhost:8082/html for freepbx

#### 2nd time
docker start freepbx


#### shutdown
```bash
docker stop freepbx
```

#### Remove
```bash
docker-compose down
```

```bash
docker rm freepbx
```

Test it out by visiting your hosts ip address in a browser.
```
http://localhost/html
```



### Fork ME

Please feel free to fork or contribite to this image.
[https://github.com/micmay/docker-freepbx.git]


### Credit

This work is based on the docker image jmar71n/freepbx.
