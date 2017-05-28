# FreePBX on Docker

### Image includes

 * phusion/baseimage (Ubuntu 14.04)
 * LAMP stack (apache2, mysql, php)
 * Asterisk 13
 * FreePBX 13
 


### Run your FreePBX image
```bash
docker run --net=host -d -t mima84/docker-freepbx
```

Test it out by visiting your hosts ip address in a browser.

### Fork ME

Please feel free to fork or contribite to this image.
[https://github.com/micmay/docker-freepbx.git]