# docker-utils
## Scripts to help manage Docker containers

This are a set of scripts that make the use and maintenace
of Docker containers more convenient.

The commands allow you to enter, manage network and other every
day tasks needed by the containers.

### Commands

* lxc_enter.sh
  
   Enter a container:

   ```
   lxc_enter.sh <container name>
   ```

* lxc_net.sh

  Perform tasks in the network namespace of the container.


   ```
   lxc_net.sh <container name> '<network command>'
   ```


* lxc_image_path.sh
  
  Prints the container rootfs path

  Sometimes you need to access files on a running container


   ```
   lxc_image_path.sh <container name>
   ```
