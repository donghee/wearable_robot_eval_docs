# human 모델 제어기 추가



###

###

### human 모델 Gazebo에 추가

### - 66 dofs human 모델: [https://github.com/donghee/wearable\_robot\_eval/blob/main/wearable\_robot\_description/urdf/human\_66dof.xacro](https://github.com/donghee/wearable\_robot\_eval/blob/main/wearable\_robot\_description/urdf/human\_66dof.xacro)

### Position 컨트롤러와 토크 컨트롤러 추가

* 휴먼 모델 position 컨트롤러 추가&#x20;
* 휴먼 모델 effect 컨트롤러 추가 안됨: urdf에서 joint에 effect 값 추가?
  * ros2\_control 토크 제어기가 구현중
* gazebo collision 검출 작동이 잘안된다.&#x20;
  * joint fixed로 구성. 하나의 링크에 두개의 joint fixed가 안됨. 링크가 분해된다.&#x20;
  * gazebo의 link의 grip 문제가 있다.&#x20;
    * Collision ?
    * 추가 연구 필요.
    * Grip 을 위한 플러그인: [\
      https://github.com/JenniferBuehler/gazebo-pkgs/wiki/The-Gazebo-grasp-fix-plugin](https://github.com/JenniferBuehler/gazebo-pkgs/wiki/The-Gazebo-grasp-fix-plugin)

