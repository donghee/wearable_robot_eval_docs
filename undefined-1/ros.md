# 웨어러블 로봇 평가 시스템 환경 구성

docker를 이용하여 웨어러블 로봇 평가를 위한 ROS 패키지 설치

### 요구사항

* Ubuntu 20.04 또는 Ubuntu 22.04
* Docker 설치
* Gazebo 3D 시뮬레이터 원활히 작동 하는 환경

### 설치 순서

1\. Ubuntu 20.04 또는 Ubuntu 22.04 설치

2\. Docker 설치

3\. ROS2 foxy 실행&#x20;

```
xhost +local:root

docker run -it \
    --privileged -v /dev/bus/usb:/dev/bus/usb \
    --user $(id -u) \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --workdir="/home/$USER" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    osrf/ros:foxy-desktop \
    bash
```

4\. 도커 컨테이너에서 다음 명령 실행하여 필요한 패키지 설치

```
sudo apt install ros-foxy-gazebo-dev ros-foxy-gazebo-plugins ros-foxy-gazebo-msgs ros-foxy-gazebo-ros-pkgs ros-foxy-gazebo-ros ros-foxy-ros-core ros-foxy-geometry2
sudo apt install ros-foxy-joint-state-publisher-gui ros-foxy-xacro
sudo apt install ros-foxy-gazebo-ros2-control ros-foxy-ros2-controllers ros-foxy-controller-manager ros-foxy-gazebo-ros2-control ros-foxy-ros2-controllers
```

5\. 웨어러블 로봇 소스 저장소 받아 빌드

```
source /opt/ros/foxy/setup.bash
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
git clone git@github.com:donghee/wearable_robot_eval.git
cd ~/ros2_ws/
colcon build
source ./install/setup.bash

ros2 launch wearable_robot_gazebo 1_dof_arm.launch.py
# or
ros2 launch wearable_robot_gazebo eduexo.launch.py
# or
ros2 launch wearable_robot_gazebo human.launch.py
```

<figure><img src="https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-LmOTWbz2dgMNQsbqUOW%2Fuploads%2FGKPO7qbOmQkLJJRK81lr%2FPeek%202022-09-09%2023-48.gif?alt=media&#x26;token=ead262d0-0d96-4f38-9877-b5e175f84506" alt=""><figcaption><p>eduexo.launch.py 실행</p></figcaption></figure>





