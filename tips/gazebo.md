# gazebo 사용팁

gazebo 토픽 목록

&#x20;`gz topic -l`

gazebo 특정 토픽 보기&#x20;

`gz topic -v /gazebo/default/robot_name/Pelvis/wrench`

`플러그인을 만들어서 토픽 구독하기`&#x20;

``[`https://classic.gazebosim.org/tutorials?tut=topics_subscribed`](https://classic.gazebosim.org/tutorials?tut=topics\_subscribed)``

```

#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
#include <gazebo/gazebo_client.hh>

#include <iostream>

/////////////////////////////////////////////////
// Function is called everytime a message is received.
void cb(ConstWorldStatisticsPtr &_msg)
{
  // Dump the message contents to stdout.
  std::cout << _msg->DebugString();
}

/////////////////////////////////////////////////
int main(int _argc, char **_argv)
{
  // Load gazebo
  gazebo::client::setup(_argc, _argv);

  // Create our node for communication
  gazebo::transport::NodePtr node(new gazebo::transport::Node());
  node->Init();

  // Listen to Gazebo world_stats topic
  gazebo::transport::SubscriberPtr sub = node->Subscribe("~/world_stats", cb);

  // Busy wait loop...replace with your own code as needed.
  while (true)
    gazebo::common::Time::MSleep(10);

  // Make sure to shut everything down.
  gazebo::client::shutdown();
}

```

gazebo 모델의 정보 보기 (human 모델의 정보보기)

```
gz model -m human -i
name: "human"
id: 10
is_static: false
pose {
  position {
    x: -5.8389050150431387e-08
    y: -6.9705949234943887e-08
    z: 1.9416723040510675e-07
  }
  orientation {
    x: 6.7173406996033751e-08
    y: 1.2933412466903891e-07
    z: 1.0401851296970577e-07
    w: 0.99999999999998412
  }
}
joint {
  name: "human::human_fixed_joint"
  id: 142
  type: FIXED
  parent: "world"
  parent_id: 0
  child: "human::Pelvis"
  child_id: 11
...
```



모델의 joint와 link으 가속도, 속도, 위치 값을 볼수 있음&#x20;

![](<../.gitbook/assets/image (1).png>)



실시간 그래프, csv, pdf 출력

<figure><img src="../.gitbook/assets/gazebo_plot.gif" alt=""><figcaption></figcaption></figure>

csv 출력 예시

```
sim_time, human/RightForeArm?world_angular_acceleration/x
732.261, -0.998975
732.262, 5.23197
732.263, 48.7125
732.264, -40.3591
732.265, -0.974806
732.266, -7.49022
732.267, 47.7811
```



오른팔 팔꿈치 joint

![](<../.gitbook/assets/image (2).png>)

오른팔 팔꿈치 아래팔  link

![](<../.gitbook/assets/image (5).png>)
