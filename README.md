# cpu-labeler-ds
A k8s DaemonSet that figures out what CPU model your workers have and labels them accordingly for workload scheduling

# Building
To build this, I started with `bitnami/kubectl:latest`, ran it interactively and `docker cp`'d the `script.sh` file into it. Then I commited the container to a new image and pushed it to DockerHub for use in my k8s/OpenShift clusters. I should build a proper Dockerfile to do this right, but this was a quick
hack. ;)