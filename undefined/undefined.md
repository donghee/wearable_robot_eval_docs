# 시뮬레이터 센서 조사

### **새로운 센서 모델링**&#x20;

Gazebo 시뮬레이터에서 새로운 센서 모델링하기 위해서는 기존의 Gazebo 플러그인을 이용하거나 새로운 센서를 만들어서 센서 값을 센서 모델링을 한다.

### Gazebo 기존 센서 조사

#### 토크 센서&#x20;

* 토크센서 플러그인: [http://osrf-distributions.s3.amazonaws.com/gazebo/api/11.0.0/classgazebo\_1\_1ForceTorquePlugin.html](http://osrf-distributions.s3.amazonaws.com/gazebo/api/11.0.0/classgazebo\_1\_1ForceTorquePlugin.html)
* 토크센서 플러그인 예시: [https://classic.gazebosim.org/tutorials?tut=force\_torque\_sensor\&cat=sensors](https://classic.gazebosim.org/tutorials?tut=force\_torque\_sensor\&cat=sensors)

토크 센서 붙이는 방법:  gazebo 시뮬레이터에서는 joint에 토크센서 플러그인을 붙이기 때문에, 다음 그림처럼 모델링 필요.

<div>

<figure><img src="https://github.com/osrf/gazebo_tutorials/raw/master/force_torque_sensor/files/force_torque_on_fixed.png" alt=""><figcaption></figcaption></figure>

 

<figure><img src="https://github.com/osrf/gazebo_tutorials/raw/master/force_torque_sensor/files/force_torque_on_revolute.png" alt=""><figcaption></figcaption></figure>

</div>

#### 근전도 센서

* Gazebo에는 구현된 것 없음.&#x20;
* 구현 한다면 하드웨어 myo armband 메시지 토픽을 생성하여 보내야 한다.
  * ros myo: [https://github.com/uts-magic-lab/ros\_myo](https://github.com/uts-magic-lab/ros\_myo)
  * [https://github.com/Calima94/my\_arm\_def/blob/master/src/my\_arm\_def\_py\_pkg/my\_arm\_def\_py\_pkg/myo\_raw.py](https://github.com/Calima94/my\_arm\_def/blob/master/src/my\_arm\_def\_py\_pkg/my\_arm\_def\_py\_pkg/myo\_raw.py)

#### 촉각피드백(택타일)센서&#x20;

* Gazebo에는 구현된 것 없음.&#x20;
* 촉각센서 시뮬레이션: Gazebo 안의 joints 위치값을 더하여 이용하여 촉각 구현
  * 참고: [https://github.com/shadow-robot/sr\_core/blob/v1.0.2/sr\_hand/src/hand/virtual\_shadowhand.cpp](https://github.com/shadow-robot/sr\_core/blob/v1.0.2/sr\_hand/src/hand/virtual\_shadowhand.cpp)
  * [https://github.com/shadow-robot/sr\_core/blob/f8ccc3c3eb3341485979659cd670b594673b3006/sr\_tactile\_sensors/src/sr\_virtual\_tactile\_sensor.cpp#L85](https://github.com/shadow-robot/sr\_core/blob/f8ccc3c3eb3341485979659cd670b594673b3006/sr\_tactile\_sensors/src/sr\_virtual\_tactile\_sensor.cpp#L85)

#### 접촉센서

* Gazebo의 촉각 센서:  [http://osrf-distributions.s3.amazonaws.com/gazebo/api/11.0.0/classgazebo\_1\_1sensors\_1\_1ContactSensor.html](http://osrf-distributions.s3.amazonaws.com/gazebo/api/11.0.0/classgazebo\_1\_1sensors\_1\_1ContactSensor.html)

{% embed url="https://github.com/CentroEPiaggio/force-torque-sensor/blob/master/model/ft_sensor.gazebo.xacro" %}
