# human 모델 + EduExo

### 웨어러블 로봇 Human에 장착

Human 모델에 웨어러블 로봇을 입혀 보자.

1\. human 모델 로드

`cd ~/ros2_ws && colcon build && source ./install/setup.bash && ros2 launch wearable_robot_gazebo human_only.launch.py`

2\. human 모델의 동작이 안정화 된 상태에서 웨어러블 로봇(EduExo) 모델 로드&#x20;

`cd ~/ros2_ws && colcon build && source ./install/setup.bash && ros2 launch wearable_robot_gazebo eduexo_only.launch.py`

3\. 웨어러블 로봇 제어

`cd ~/ros2_ws && python3 src/wearable_robot_eval/wearable_robot_description/scripts/1_dof_arm_gazebo_test.py -2.5`

``

<figure><img src="../.gitbook/assets/image (2) (1).png" alt=""><figcaption></figcaption></figure>

{% embed url="https://youtu.be/-3CZxaRlbQI" %}
