# tftpd-hpa
Docker image for pxe

## Usage:

```
docker run -d -v /path/to/images:/var/tftpboot/images -v /path/to/pxelinux.cfg:/var/tftpboot/pxelinux.cfg -p 69:69/udp lukaszburylo/tftpd-hpa
```
