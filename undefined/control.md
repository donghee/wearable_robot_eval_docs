# 제어기(Control)

human 모델을 움직이거나 웨어러블 로봇을 움직이기 위해서는 제어기가 필요하다. &#x20;

웨어러블 로봇 평가 시스템에서는 제어기로 ros2\_control 패키지를 사용.&#x20;

입력 신호를 받아서 원하는 움직임(위치, 속도, 힘)이 되도록 출력 신호를 보낸다.

<figure><img src="http://daikimaekawa.github.io/images/ros_control/gazebo_transmission.png" alt=""><figcaption></figcaption></figure>

제어 루프

<figure><img src="https://fjp.at/assets/ros/ros-control/control-loop-extended.png" alt=""><figcaption></figcaption></figure>

#### 참고&#x20;

* [https://control.ros.org/master/doc/getting\_started/getting\_started.html#architecture](https://control.ros.org/master/doc/getting\_started/getting\_started.html#architecture)
* [http://daikimaekawa.github.io/ros/2014/12/19/ros\_control](http://daikimaekawa.github.io/ros/2014/12/19/ros\_control)
* [https://qiita.com/MoriKen/items/ccd1fed1643e8d681e23](https://qiita.com/MoriKen/items/ccd1fed1643e8d681e23)
* [https://www.naun.org/main/NAUN/mcs/2020/a122002-006(2020).pdf](https://www.naun.org/main/NAUN/mcs/2020/a122002-006\(2020\).pdf)
* [https://fjp.at/posts/ros/ros-control/](https://fjp.at/posts/ros/ros-control/)
* [https://github.com/youtalk/dynamixel\_control/blob/rolling/pantilt\_bot\_description/urdf/pantilt\_bot.ros2\_control\_gazebo.xacro](https://github.com/youtalk/dynamixel\_control/blob/rolling/pantilt\_bot\_description/urdf/pantilt\_bot.ros2\_control\_gazebo.xacro)
*   [https://www.youtube.com/watch?v=DzizMZp3KqU](https://www.youtube.com/watch?v=DzizMZp3KqU)

    [https://www.youtube.com/watch?v=4VVrTCnxvSw](https://www.youtube.com/watch?v=4VVrTCnxvSw)
