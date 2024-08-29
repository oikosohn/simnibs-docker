# simnibs-docker
Unofficial dockerfile for SimNIBS 4.1.0

## 1. Build docker image
```
docker build -t simnibs-4.1.0 -f /path/to/dockerfile .
```

## 2. Check the built image
```
docker images
```
![image](https://github.com/user-attachments/assets/8c3e7531-88fd-4819-9297-51e9db41be25)


## 3. Run docker image
- `-v` option is used to mount a volume
```
docker run -ti -v data:/opt/data simnibs-4.1.0
```

## 4. Verify the installed version of SimNIBS in the container
```
simnibs --version
```
