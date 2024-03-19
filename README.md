### Building the image

Go to src folder and run the following command to build the image

```shell

./build-image.sh
```

Now the image is available as *ubuntu-ssh* . 

### starting the containers

To start the container, run the following command

```shell
docker-compose up -d
```

### Accessing from SSH

To access the container from SSH, run the following command


```shell
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no user1@localhost -p 5222
```

The password is *password1*