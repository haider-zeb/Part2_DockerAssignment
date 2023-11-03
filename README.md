Part 2: Docker Containers with Commands

Step 1:

C:\\Users\\HP\\Desktop\\DockerLearning\>docker images REPOSITORY TAG
IMAGE ID CREATED SIZE haiderali956/helloworldapp v1.0 7da20d9f204c 2
hours ago 1.05GB

Step 2:

C:\\Users\\HP\\Desktop\\DockerLearning\>docker run -d -p 2010:2010
\--name HelloWorldApp-container 7da20d9f204c
2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b

\"(By running the above command it will bind the localhost as well and
the app will be up and running by -p (host portno:container port no )\"
-d command will make sure that whether the termimal is closed it wont
affect the app, \--name command will name the container). \" 2023-11-02
23:20:14 INFO: Started server process \[1\] 2023-11-02 23:20:14 INFO:
Waiting for application startup. 2023-11-02 23:20:14 INFO: Application
startup complete. 2023-11-02 23:20:14 INFO: Uvicorn running on
http://0.0.0.0:2010 (Press CTRL+C to quit) 2023-11-02 23:21:00 INFO:
172.17.0.1:54540 - \"GET / HTTP/1.1\" 200 OK

Step 3: docker ps give list of containers which are in running state
only. C:\\Users\\HP\\Desktop\\DockerLearning\>docker ps CONTAINER ID
IMAGE COMMAND CREATED STATUS PORTS NAMES 2f1df6dfc2ff 7da20d9f204c
\"python run.py\" 5 minutes ago Up 5 minutes 0.0.0.0:2010-\>2010/tcp
HelloWorldApp-container

docker stop ,stops the container
C:\\Users\\HP\\Desktop\\DockerLearning\>docker stop 2f1df6dfc2ff
2f1df6dfc2ff

docker logs ContainerID gives the logs of the paricular container
C:\\Users\\HP\\Desktop\\DockerLearning\>docker logs 2f1df6dfc2ff INFO:
Started server process \[1\] INFO: Waiting for application startup.
INFO: Application startup complete. INFO: Uvicorn running on
http://0.0.0.0:2010 (Press CTRL+C to quit) INFO: 172.17.0.1:54540 -
\"GET / HTTP/1.1\" 200 OK INFO: 172.17.0.1:54540 - \"GET / HTTP/1.1\"
200 OK INFO: 172.17.0.1:54540 - \"GET / HTTP/1.1\" 200 OK INFO:
172.17.0.1:54540 - \"GET / HTTP/1.1\" 200 OK INFO: Shutting down INFO:
Waiting for application shutdown. INFO: Application shutdown complete.
INFO: Finished server process \[1\] INFO: Started server process \[1\]
INFO: Waiting for application startup. INFO: Application startup
complete. INFO: Uvicorn running on http://0.0.0.0:2010 (Press CTRL+C to
quit) INFO: 172.17.0.1:45284 - \"GET / HTTP/1.1\" 200 OK INFO:
172.17.0.1:45284 - \"GET / HTTP/1.1\" 200 OK

docker inspect command givs complete details of the container about
network settings, mounts etc
C:\\Users\\HP\\Desktop\\DockerLearning\>docker inspect 2f1df6dfc2ff \[ {
\"Id\":
\"2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b\",
\"Created\": \"2023-11-02T18:20:13.050135415Z\", \"Path\": \"python\",
\"Args\": \[ \"run.py\" \], \"State\": { \"Status\": \"running\",
\"Running\": true, \"Paused\": false, \"Restarting\": false,
\"OOMKilled\": false, \"Dead\": false, \"Pid\": 5500, \"ExitCode\": 0,
\"Error\": \"\", \"StartedAt\": \"2023-11-02T18:30:39.741245499Z\",
\"FinishedAt\": \"2023-11-02T18:28:54.400671909Z\" }, \"Image\":
\"sha256:7da20d9f204c94a5ff5c7f09e5bf7116eecfc0cd5f433a04b8a9f71eeb8f1455\",
\"ResolvConfPath\":
\"/var/lib/docker/containers/2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b/resolv.conf\",
\"HostnamePath\":
\"/var/lib/docker/containers/2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b/hostname\",
\"HostsPath\":
\"/var/lib/docker/containers/2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b/hosts\",
\"LogPath\":
\"/var/lib/docker/containers/2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b/2f1df6dfc2ffae34aa9452f365f6fac2ece44df97e26da58b93ad7d49b23910b-json.log\",
\"Name\": \"/HelloWorldApp-container\", \"RestartCount\": 0, \"Driver\":
\"overlay2\", \"Platform\": \"linux\", \"MountLabel\": \"\",
\"ProcessLabel\": \"\", \"AppArmorProfile\": \"\", \"ExecIDs\": null,
\"HostConfig\": { \"Binds\": null, \"ContainerIDFile\": \"\",
\"LogConfig\": { \"Type\": \"json-file\", \"Config\": {} },
\"NetworkMode\": \"default\", \"PortBindings\": { \"2010/tcp\": \[ {
\"HostIp\": \"\", \"HostPort\": \"2010\" } \] }, \"RestartPolicy\": {
\"Name\": \"no\", \"MaximumRetryCount\": 0 }, \"AutoRemove\": false,
\"VolumeDriver\": \"\", \"VolumesFrom\": null, \"ConsoleSize\": \[ 30,
120 \], \"CapAdd\": null, \"CapDrop\": null, \"CgroupnsMode\": \"host\",
\"Dns\": \[\], \"DnsOptions\": \[\], \"DnsSearch\": \[\],
\"ExtraHosts\": null, \"GroupAdd\": null, \"IpcMode\": \"private\",
\"Cgroup\": \"\", \"Links\": null, \"OomScoreAdj\": 0, \"PidMode\":
\"\", \"Privileged\": false, \"PublishAllPorts\": false,
\"ReadonlyRootfs\": false, \"SecurityOpt\": null, \"UTSMode\": \"\",
\"UsernsMode\": \"\", \"ShmSize\": 67108864, \"Runtime\": \"runc\",
\"Isolation\": \"\", \"CpuShares\": 0, \"Memory\": 0, \"NanoCpus\": 0,
\"CgroupParent\": \"\", \"BlkioWeight\": 0, \"BlkioWeightDevice\": \[\],
\"BlkioDeviceReadBps\": \[\], \"BlkioDeviceWriteBps\": \[\],
\"BlkioDeviceReadIOps\": \[\], \"BlkioDeviceWriteIOps\": \[\],
\"CpuPeriod\": 0, \"CpuQuota\": 0, \"CpuRealtimePeriod\": 0,
\"CpuRealtimeRuntime\": 0, \"CpusetCpus\": \"\", \"CpusetMems\": \"\",
\"Devices\": \[\], \"DeviceCgroupRules\": null, \"DeviceRequests\":
null, \"MemoryReservation\": 0, \"MemorySwap\": 0, \"MemorySwappiness\":
null, \"OomKillDisable\": false, \"PidsLimit\": null, \"Ulimits\": null,
\"CpuCount\": 0, \"CpuPercent\": 0, \"IOMaximumIOps\": 0,
\"IOMaximumBandwidth\": 0, \"MaskedPaths\": \[ \"/proc/asound\",
\"/proc/acpi\", \"/proc/kcore\", \"/proc/keys\",
\"/proc/latency_stats\", \"/proc/timer_list\", \"/proc/timer_stats\",
\"/proc/sched_debug\", \"/proc/scsi\", \"/sys/firmware\" \],
\"ReadonlyPaths\": \[ \"/proc/bus\", \"/proc/fs\", \"/proc/irq\",
\"/proc/sys\", \"/proc/sysrq-trigger\" \] }, \"GraphDriver\": {
\"Data\": { \"LowerDir\":
\"/var/lib/docker/overlay2/35b8d4b673466c21041a2dfda1d28e1376fa04d2c8f81be560d865f1d901b356-init/diff:/var/lib/docker/overlay2/5t4t2vl4rc4zdfndfsw8c7mc1/diff:/var/lib/docker/overlay2/ijixxqfvc5x3licub5hl1fcqo/diff:/var/lib/docker/overlay2/ku7mbcbweagl2lscj4lzixqmi/diff:/var/lib/docker/overlay2/c37e8d0b5108ffc7e148c18cc21f4db05b741bd8268c936e971b0c480f625c4c/diff:/var/lib/docker/overlay2/221aa64009857a20df11f3e5be88c8d573775f48a635761b4b531c58759fd6ef/diff:/var/lib/docker/overlay2/6e0f3d84312d7e025e25159fec9a87619282d17951f64b864674c90d4dfdbf20/diff:/var/lib/docker/overlay2/2a959982b57484aede2438572812a372bcb686f7be498ff99a3968970dbc2894/diff:/var/lib/docker/overlay2/7134ce7820df021add72e5aaf9c2afba3b868581c7f484b665b0720cba595f5f/diff:/var/lib/docker/overlay2/c4a80260214bb6c6160bb9aaf71207b77825ec3f2c43369761d0fda6fbc45739/diff:/var/lib/docker/overlay2/b079d34d41d289c42a8bb76facb6feee4260d05d41c40680a9fd5daf941df09d/diff:/var/lib/docker/overlay2/8941d915fc75076189391071031f3e810880ccd5e787c967a6d17c49531d43b1/diff\",
\"MergedDir\":
\"/var/lib/docker/overlay2/35b8d4b673466c21041a2dfda1d28e1376fa04d2c8f81be560d865f1d901b356/merged\",
\"UpperDir\":
\"/var/lib/docker/overlay2/35b8d4b673466c21041a2dfda1d28e1376fa04d2c8f81be560d865f1d901b356/diff\",
\"WorkDir\":
\"/var/lib/docker/overlay2/35b8d4b673466c21041a2dfda1d28e1376fa04d2c8f81be560d865f1d901b356/work\"
}, \"Name\": \"overlay2\" }, \"Mounts\": \[\], \"Config\": {
\"Hostname\": \"2f1df6dfc2ff\", \"Domainname\": \"\", \"User\": \"\",
\"AttachStdin\": false, \"AttachStdout\": false, \"AttachStderr\":
false, \"ExposedPorts\": { \"2010/tcp\": {} }, \"Tty\": false,
\"OpenStdin\": false, \"StdinOnce\": false, \"Env\": \[
\"PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",
\"LANG=C.UTF-8\", \"GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305\",
\"PYTHON_VERSION=3.12.0\", \"PYTHON_PIP_VERSION=23.2.1\",
\"PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/c6add47b0abf67511cdfb4734771cbab403af062/public/get-pip.py\",
\"PYTHON_GET_PIP_SHA256=22b849a10f86f5ddf7ce148ca2a31214504ee6c83ef626840fde6e5dcd809d11\"
\], \"Cmd\": null, \"Image\": \"7da20d9f204c\", \"Volumes\": null,
\"WorkingDir\": \"\", \"Entrypoint\": \[ \"python\", \"run.py\" \],
\"OnBuild\": null, \"Labels\": {} }, \"NetworkSettings\": { \"Bridge\":
\"\", \"SandboxID\":
\"eb2fffc4b4b96c99f2f79e0976e9f8d5400244b2fc1e1c6d0abf6af43475d883\",
\"HairpinMode\": false, \"LinkLocalIPv6Address\": \"\",
\"LinkLocalIPv6PrefixLen\": 0, \"Ports\": { \"2010/tcp\": \[ {
\"HostIp\": \"0.0.0.0\", \"HostPort\": \"2010\" } \] }, \"SandboxKey\":
\"/var/run/docker/netns/eb2fffc4b4b9\", \"SecondaryIPAddresses\": null,
\"SecondaryIPv6Addresses\": null, \"EndpointID\":
\"c67652cdfe0eeee757c73281edaabed4a742712263d74c15f13950a500436ef9\",
\"Gateway\": \"172.17.0.1\", \"GlobalIPv6Address\": \"\",
\"GlobalIPv6PrefixLen\": 0, \"IPAddress\": \"172.17.0.2\",
\"IPPrefixLen\": 16, \"IPv6Gateway\": \"\", \"MacAddress\":
\"02:42:ac:11:00:02\", \"Networks\": { \"bridge\": { \"IPAMConfig\":
null, \"Links\": null, \"Aliases\": null, \"NetworkID\":
\"1c808aa8f6da4bc1255681cad737c760dd9ecd8f2eb801c2d834a4f99da907b9\",
\"EndpointID\":
\"c67652cdfe0eeee757c73281edaabed4a742712263d74c15f13950a500436ef9\",
\"Gateway\": \"172.17.0.1\", \"IPAddress\": \"172.17.0.2\",
\"IPPrefixLen\": 16, \"IPv6Gateway\": \"\", \"GlobalIPv6Address\": \"\",
\"GlobalIPv6PrefixLen\": 0, \"MacAddress\": \"02:42:ac:11:00:02\",
\"DriverOpts\": null } } } } \]

docker exec commands access the container\'s shell and run more than one
process inside a container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker exec -it 2f1df6dfc2ff
/bin/sh \# ps -ef UID PID PPID C STIME TTY TIME CMD root 1 0 2 07:17 ?
00:00:01 python run.py root 6 0 0 07:18 pts/0 00:00:00 /bin/sh root 12 6
0 07:18 pts/0 00:00:00 ps -ef

docker stats tells about the computer resources how much this container
is utilizing. C:\\Users\\HP\\Desktop\\DockerLearning\>docker stats
CONTAINER ID NAME CPU % MEM USAGE / LIMIT MEM % NET I/O BLOCK I/O PIDS
2f1df6dfc2ff HelloWorldApp-container 0.06% 37.2MiB / 7.635GiB 0.48% 4kB
/ 1.35kB 0B / 0B 4

docker top shows the running process of a container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker top 2f1df6dfc2ff UID PID
PPID C STIME TTY TIME CMD root 5500 5479 0 18:30 ? 00:00:09 python
run.py root 5737 5479 0 18:35 ? 00:00:00 /bin/sh root 5913 5479 0 18:55
? 00:00:00 /bin/bash

docker start this command starts the container if its stop.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker start 2f1df6dfc2ff
2f1df6dfc2ff

docker pause this command pauses all process within the container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker pause 2f1df6dfc2ff
2f1df6dfc2ff

docker unpause this command resumes the process within the container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker unpause 2f1df6dfc2ff
2f1df6dfc2ff

Docker rename command helps to change the name of existing container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker rename
HelloWorldApp-container HelloApp-Container

docker wait commands block the container and than print the exit code.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker wait 2f1df6dfc2ff 0

docker restart commands starts again the container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker restart 2f1df6dfc2ff
2f1df6dfc2ff

docker port tells on which port its listening.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker port 2f1df6dfc2ff
2010/tcp -\> 0.0.0.0:2010

docker commit command changes made to a container to create a new image,
preserving the state of the container at the time of commit. This allows
you to save changes made to a container and reuse them in the future
C:\\Users\\HP\\Desktop\\DockerLearning\>docker run -it python bin/bash
root@2fb7e17d3b67:/# touch testfile.txt root@2fb7e17d3b67:/# ls bin dev
home lib32 libx32 mnt proc run srv testfile.txt usr boot etc lib lib64
media opt root sbin sys tmp var
C:\\Users\\HP\\Desktop\\DockerLearning\>docker commit 2fb7e17d3b67
pythoncommit
sha256:9438dea833aaf23dc754ca96a8002349243f42a8b74702dd0bf678dc2d016898
C:\\Users\\HP\\Desktop\\DockerLearning\>docker images REPOSITORY TAG
IMAGE ID CREATED SIZE pythoncommit latest 9438dea833aa 11 seconds ago
1.02GB haiderali956/helloworldapp v1.0 7da20d9f204c 19 hours ago 1.05GB
nginx latest c20060033e06 2 days ago 187MB python latest 2acccf902fa3 2
weeks ago 1.02GB C:\\Users\\HP\\Desktop\\DockerLearning\>docker run -it
pythoncommit /bin/bash root@75e4d9b3c92e:/# exit

docker rm command deletes the stop container.
C:\\Users\\HP\\Desktop\\DockerLearning\>docker rm
84ae007c812d4a8b28bb8f980be57ba1c9e2877cdb55831f08c096b4abfa4199
84ae007c812d4a8b28bb8f980be57ba1c9e2877cdb55831f08c096b4abfa4199

docker cp command copies the to and from the container to local host
machine. C:\\Users\\HP\\Desktop\\DockerLearning\>docker ps CONTAINER ID
IMAGE COMMAND CREATED STATUS PORTS NAMES 61bc8c3b17da 9438dea833aa
\"bin/bash\" 2 minutes ago Up 2 minutes gallant_black 2f1df6dfc2ff
7da20d9f204c \"python run.py\" 17 hours ago Up 4 hours
0.0.0.0:2010-\>2010/tcp HelloApp-Container
C:\\Users\\HP\\Desktop\\DockerLearning\>docker cp
61bc8c3b17da97f0970aad180e922343616b0d0d392481d6b6ff05603035ff8b:/testfile.txt
testfile.txt Successfully copied 1.54kB to
C:\\Users\\HP\\Desktop\\DockerLearning\\testfile.txt

docker attach command uses to debug the container for any logs and
errors. C:\\Users\\HP\\Desktop\\DockerLearning\>docker ps CONTAINER ID
IMAGE COMMAND CREATED STATUS PORTS NAMES 61bc8c3b17da 9438dea833aa
\"bin/bash\" 52 minutes ago Up 52 minutes gallant_black 2f1df6dfc2ff
7da20d9f204c \"python run.py\" 18 hours ago Up 5 hours
0.0.0.0:2010-\>2010/tcp HelloApp-Container

C:\\Users\\HP\\Desktop\\DockerLearning\>docker attach 2f1df6dfc2ff INFO:
172.17.0.1:55982 - \"GET / HTTP/1.1\" 200 OK INFO: 172.17.0.1:55982 -
\"GET / HTTP/1.1\" 200 OK INFO: 172.17.0.1:55982 - \"GET / HTTP/1.1\"
200 OK

C:\\Users\\HP\\Desktop\\DockerLearning\>docker ps CONTAINER ID IMAGE
COMMAND CREATED STATUS PORTS NAMES 61bc8c3b17da 9438dea833aa
\"bin/bash\" 56 minutes ago Up 56 minutes gallant_black
