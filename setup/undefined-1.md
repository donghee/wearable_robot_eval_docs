# 웨어러블 로봇 평가 시스템 원격 환경

### 1. 원격 접속 주소

다음 링크로 접속 후 id와 비밀번호를 넣고 웨어러블 로봇 평가 시스템 개발 환경에 접속한다.&#x20;

{% embed url="https://wearable.baribarilab.com/vnc.html?path=?token=p1" %}

### 2. docker 실행

```
xhost +local:root

docker run -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --workdir="/home/$USER" \
    --volume="/home/$USER:/root" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    osrf/ros:foxy-desktop \
    bash
```

3\. tilix 터미널 실행&#x20;

```
root@488aeced02af:~/ tilix
```

4\.&#x20;
