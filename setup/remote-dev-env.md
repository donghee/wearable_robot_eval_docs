# 웨어러블 로봇 평가 시스템 원격 환경

### 1. 원격 접속 주소

다음 링크로 접속 후 id와 비밀번호를 넣고 웨어러블 로봇 평가 시스템 개발 환경에 접속한다.&#x20;

{% embed url="https://wearable.baribarilab.com/vnc.html?path=?token=p1" %}

### 2. docker 실행

실행 메뉴 -> System Tools -> LXTerminal 을 실행 후 다음 명령 실행

```
xhost +local:root

docker run -it \
    --privileged -v /dev/bus/usb:/dev/bus/usb \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --workdir="/root" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    osrf/ros:foxy-desktop \
    bash
```

### 3. tilix 터미널 실행&#x20;

docker 컨테이너 안에서 여러 명령을 실행하기 위해 tilix 터미널을 실행 한다.

```
root@488aeced02af:~/ tilix
```

### 4. human 모델 로드

```bash
cd ~/ros2_ws && colcon build && source ./install/setup.bash && ros2 launch wearable_robot_gazebo human_only.launch.py

```



### 5. human 모델의 동작이 안정화 된 상태에서 웨어러블 로봇(EduExo) 모델 로드

`cd ~/ros2_ws && colcon build && source ./install/setup.bash && ros2 launch wearable_robot_gazebo eduexo_only.launch.py`

```bash
cd ~/ros2_ws && colcon build && source ./install/setup.bash && ros2 launch wearable_robot_gazebo eduexo_only.launch.py
```

### `6`. 웨어러블 로봇 제어

`cd ~/ros2_ws && python3 src/wearable_robot_eval/wearable_robot_description/scripts/1_dof_arm_gazebo_test.py -2.5`

``

```bash
cd ~/ros2_ws && python3 src/wearable_robot_eval/wearable_robot_description/scripts/1_dof_arm_gazebo_test.py -2.5
```

``
