# human 모델

### 기본 정보

66 자유도를 가진 Human 모델

| Subject | Mass \[kg] | Height \[cm] | Foot size \[cm] | Arm span \[cm] | Ankle height \[cm] | Hip height \[cm] | Hip width \[cm] | Knee height \[cm] | Shoulder width \[cm] | Shoulder height \[cm] | Sole height \[cm] |
| :-----: | :--------: | :----------: | :-------------: | :------------: | :----------------: | :--------------: | :-------------: | :---------------: | :------------------: | :-------------------: | :---------------: |
|    1    |    62.2    |      168     |        24       |       163      |          8         |        91        |        25       |        48.5       |         35.4         |          140          |                   |

<figure><img src="https://github.com/robotology/human-gazebo/raw/master/misc/human-model.png" alt=""><figcaption></figcaption></figure>

### 모델링 결과&#x20;

출처: [https://github.com/donghee/wearable\_robot\_eval/blob/main/wearable\_robot\_description/urdf/human\_66dof.xacro](https://github.com/donghee/wearable\_robot\_eval/blob/main/wearable\_robot\_description/urdf/human\_66dof.xacro)



<figure><img src="https://i.imgur.com/zDyzSJ4.png" alt=""><figcaption><p>참고: Xsens MVN Biomechanical Model</p></figcaption></figure>

|        |               |   |
| ------ | ------------- | - |
| Pelvis | 요추와 엉덩이 조인트 연 |   |
|        |               |   |
|        |               |   |
|        |               |   |

```xml
<!--URDF MODEL 66 DoFs-->

<robot name="human" xmlns:xacro="http://www.ros.org/wiki/xacro">
  <!-- Import all Gazebo-customization elements, including Gazebo colors -->
  <!-- <xacro:include filename="$(find wearable_robot_description)/urdf/human_66dof.gazebo"/> -->
  <!-- Import Rviz colors -->
  <!-- 색 정의 -->
  <xacro:include filename="$(find wearable_robot_description)/urdf/materials.xacro"/>

  <!--To open this model with Gazebo replace the null masses, inertias and dimensions of the 'fake links f1 and f2'-->
  <!--LINKS-->
  <!--Link base (1)-->
  <!-- 골반 -->
  <link name="Pelvis">
    <inertial>
      <mass value="4.976"/>
      <!--COM origin wrt pHipOrigin-->
      <origin xyz="0           0    0.049743" rpy="0 0 0" />
      <inertia ixx="0.029678" iyy="0.011854" izz="0.033653" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt pHipOrigin-->
      <origin xyz="0           0    0.049743" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.24914    0.097469"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt pHipOrigin-->
      <origin xyz="0           0    0.049743" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.24914    0.097469"/>
      </geometry>
    </collision>

  </link>

  <!--Chain from (2) to (7)-->
  <!-- 허리뼈 Lumbar Spine L5번 부터 L3번 까지 -->
  <!-- _f1, _f2로 끝나는 링크는 x, y축 조인트 회전을 위한 링크이고, _f1, _f2가 표시가 없는 링크는 z축 회전을 위한 링크이다. _f1, _f2 링크는 회전을 위해 만들어진 Fake Link 이다. -->
  <link name="L5_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="L5_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="L5">
    <inertial>
      <mass value="6.3444"/>
      <!--COM origin wrt jL5S1-->
      <origin xyz="0           0    0.047552" rpy="0 0 0" />
      <inertia ixx="0.018868" iyy="0.014872" izz="0.024177" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin origin wrt jL5S1-->
      <origin xyz="0           0    0.047552" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.16323    0.095104"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin origin wrt jL5S1-->
      <origin xyz="0           0    0.047552" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.16323    0.095104"/>
      </geometry>
    </collision>
  </link>

  <!-- 허리뼈 Lumbar L3번 부터 L1번 까지 -->
  <link name="L3_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="L3_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="L3">
    <inertial>
      <mass value="6.3444"/>
      <!--COM origin wrt jL4L3-->
      <origin xyz="0           0    0.042958" rpy="0 0 0" />
      <inertia ixx="0.017989" iyy="0.013993" izz="0.024177" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin origin wrt jL4L3-->
      <origin xyz="0           0    0.042958" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.16323    0.085916"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin origin wrt jL4L3-->
      <origin xyz="0           0    0.042958" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.16323    0.085916"/>
      </geometry>
    </collision>
  </link>

  <!-- 등뼈 Thoracic Spline T12번 부터 T8번 까지 -->
  <link name="T12_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="T12_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="T12">
    <inertial>
      <mass value="6.3444"/>
      <!--COM origin wrt jL1T12-->
      <origin xyz="0           0    0.042958" rpy="0 0 0" />
      <inertia ixx="0.017989" iyy="0.013993" izz="0.024177" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin origin wrt jL1T12-->
      <origin xyz="0           0    0.042958" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.16323    0.085916"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin origin wrt jL1T12-->
      <origin xyz="0           0    0.042958" rpy="0 0 0" />
      <geometry>
        <box size="0.13815     0.16323    0.085916"/>
      </geometry>
    </collision>
  </link>

  <!-- 등뼈 Thoracic Spline T8번 부터 T1번 까지 -->
  <link name="T8_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="T8_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="T8">
    <inertial>
      <mass value="2.488"/>
      <!--COM origin wrt jT9T8-->
      <origin xyz="0           0    0.059874" rpy="0 0 0" />
      <inertia ixx="0.0035473" iyy="0.0067278" izz="0.0043289" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jT9T8-->
      <origin xyz="0           0    0.059874" rpy="0 0 0" />
      <geometry>
        <box size="0.13457    0.052626     0.11975"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jT9T8-->
      <origin xyz="0           0    0.059874" rpy="0 0 0" />
      <geometry>
        <box size="0.13457    0.052626     0.11975"/>
      </geometry>
    </collision>

  </link>

  <!-- 목 -->
  <link name="Neck_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="Neck_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="Neck">
    <inertial>
      <mass value="0.7464"/>
      <!--COM origin wrt jT1C7-->
      <origin xyz="0           0    0.044626" rpy="0 0 0" />
      <inertia ixx="0.0006461" iyy="0.0006461" izz="0.00030124" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jT1C7-->
      <origin xyz="0           0    0.044626" rpy="0 0 0" />
      <geometry>
	<cylinder length="0.089252" radius="0.014205"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jT1C7-->
      <origin xyz="0           0    0.044626" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.089252" radius="0.014205"/>
      </geometry>
    </collision>
  </link>

  <!-- 머리 -->
  <link name="Head_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="Head_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="Head">
    <inertial>
      <mass value="2.2392"/>
      <!--COM origin wrt jC1Head-->
      <origin xyz="0           0    0.089005" rpy="0 0 0" />
      <inertia ixx="0.0070955" iyy="0.0070955" izz="0.0070955" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--boc origin wrt jC1Head-->
      <origin xyz="0           0    0.089005" rpy="0 0 0" />
      <geometry>
        <sphere radius="0.089005"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jC1Head-->
      <origin xyz="0           0    0.089005" rpy="0 0 0" />
      <geometry>
        <sphere radius="0.089005"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른쪽 어깨 -->
  <!--Chain from (8) to (11)-->
  <link name="RightShoulder_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightShoulder_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightShoulder">
    <inertial>
      <mass value="1.9282"/>
      <!--COM origin wrt jRightC7Shoulder-->
      <origin xyz="0   -0.065233           0" rpy="0 0 0" />
      <inertia ixx="0.0030029" iyy="0.00053578" izz="0.0030029" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightC7Shoulder. RPY rotated of pi/2.-->
      <origin xyz="0   -0.065233           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.13047" radius="0.023574"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightC7Shoulder. RPY rotated of pi/2.-->
      <origin xyz="0   -0.065233           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.13047" radius="0.023574"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른쪽 상완 -->
  <link name="RightUpperArm_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightUpperArm_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightUpperArm">
    <inertial>
      <mass value="1.866"/>
      <!--COM origin wrt jRightShoulder-->
      <origin xyz="0    -0.13497           0" rpy="0 0 0" />
      <inertia ixx="0.011736" iyy="0.00080917" izz="0.011736" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightShoulder. RPY rotated of pi/2.-->
      <origin xyz="0    -0.13497           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.26994" radius="0.029449"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightShoulder. RPY rotated of pi/2.-->
      <origin xyz="0    -0.13497           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.26994" radius="0.029449"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른쪽 전완 -->
  <link name="RightForeArm_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightForeArm_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightForeArm">
    <inertial>
      <mass value="1.244"/>
      <!--COM origin wrt jRightElbow-->
      <origin xyz="0    -0.11124           0" rpy="0 0 0" />
      <inertia ixx="0.0052508" iyy="0.00023975" izz="0.0052508" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightElbow. RPY rotated of pi/2.-->
      <origin xyz="0    -0.11124           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.22247" radius="0.019633"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightElbow. RPY rotated of pi/2.-->
      <origin xyz="0    -0.11124           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.22247" radius="0.019633"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른손 -->
  <link name="RightHand_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightHand_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightHand">
    <inertial>
      <mass value="0.3732"/>
      <!--COM origin wrt jRightWrist-->
      <origin xyz="0   -0.083588           0" rpy="0 0 0" />
      <inertia ixx="0.00091713" iyy="0.00043425" izz="0.0012555" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightWrist-->
      <origin xyz="0   -0.083588           0" rpy="0 0 0" />
      <geometry>
        <box size="0.11145     0.16718    0.039266"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightWrist-->
      <origin xyz="0   -0.083588           0" rpy="0 0 0" />
      <geometry>
      <!--  <box size="0.11145     0.16718    0.039266"/> -->
      </geometry>
      <!-- <contact_coefficients mu="2.0" kp="2.0" kd="2.0" /> -->
      <contact_coefficients mu="0" kp="1000.0" kd="1.0"/>
    </collision>
  </link>
  <!-- 오른손가락 -->
  <link name="RightHandCOM">
    <inertial>
      <mass value="0.00001"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="0" iyy="0" izz="0" ixy="0" ixz="0" iyz="0"/>
    </inertial>
    <visual>
      <!--box origin wrt jRightWrist-->
      <origin xyz="0   0           0" rpy="0 0 0" />
      <geometry>
        <box size="0     0    0"/>
      </geometry>
      <material name="color"/>
    </visual>
  </link>


  <!--Chain from (12) to (15)-->
  <!-- 왼쪽 어깨 -->
  <link name="LeftShoulder_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftShoulder_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftShoulder">
    <inertial>
      <mass value="1.9282"/>
      <!--COM origin wrt jLeftC7Shoulder-->
      <origin xyz="0    0.065233           0" rpy="0 0 0" />
      <inertia ixx="0.0030029" iyy="0.00053578" izz="0.0030029" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftC7Shoulder. RPY rotated of pi/2.-->
      <origin xyz="0    0.065233           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.13047" radius="0.023574"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftC7Shoulder. RPY rotated of pi/2.-->
      <origin xyz="0    0.065233           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.13047" radius="0.023574"/>
      </geometry>
    </collision>

  </link>

  <!-- 왼쪽 상완 -->
  <link name="LeftUpperArm_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftUpperArm_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftUpperArm">
    <inertial>
      <mass value="1.866"/>
      <!--COM origin wrt jLeftShoulder-->
      <origin xyz="0     0.13497           0" rpy="0 0 0" />
      <inertia ixx="0.011736" iyy="0.00080917" izz="0.011736" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftShoulder. RPY rotated of pi/2.-->
      <origin xyz="0     0.13497           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.26994" radius="0.029449"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftShoulder. RPY rotated of pi/2.-->
      <origin xyz="0     0.13497           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.26994" radius="0.029449"/>
      </geometry>
    </collision>

  </link>

  <!-- 왼쪽 전완 -->
  <link name="LeftForeArm_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftForeArm_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftForeArm">
    <inertial>
      <mass value="1.244"/>
      <!--COM origin wrt jLeftElbow-->
      <origin xyz="0     0.11124           0" rpy="0 0 0" />
      <inertia ixx="0.0052508" iyy="0.00023975" izz="0.0052508" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftElbow. RPY rotated of pi/2.-->
      <origin xyz="0     0.11124           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.22247" radius="0.019633"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftElbow. RPY rotated of pi/2.-->
      <origin xyz="0     0.11124           0" rpy="1.5708 0 0" />
      <geometry>
        <cylinder length="0.22247" radius="0.019633"/>
      </geometry>
    </collision>

  </link>

  <!-- 왼손 -->
  <link name="LeftHand_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftHand_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftHand">
    <inertial>
      <mass value="0.3732"/>
      <!--COM origin wrt jLeftWrist-->
      <origin xyz="0    0.083588           0" rpy="0 0 0" />
      <inertia ixx="0.00091713" iyy="0.00043425" izz="0.0012555" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--COM origin wrt jLeftWrist-->
      <origin xyz="0    0.083588           0" rpy="0 0 0" />
      <geometry>
        <box size="0.11145     0.16718    0.039266"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--COM origin wrt jLeftWrist-->
      <origin xyz="0    0.083588           0" rpy="0 0 0" />
      <geometry>
        <box size="0.11145     0.16718    0.039266"/>
      </geometry>
    </collision>

  </link>
  <!-- 왼손가락 -->
  <link name="LeftHandCOM">
    <inertial>
      <mass value="0.00001"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="0" iyy="0" izz="0" ixy="0" ixz="0" iyz="0"/>
    </inertial>
    <visual>
      <!--COM origin wrt jLeftWrist-->
      <origin xyz="0    0           0" rpy="0 0 0" />
      <geometry>
        <box size="0     0    0"/>
      </geometry>
      <material name="color"/>
    </visual>
  </link>

  <!--Chain from (16) to (19)-->
  <!-- 오른쪽 대퇴골 -->
  <link name="RightUpperLeg_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightUpperLeg_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightUpperLeg">
    <inertial>
      <mass value="7.775"/>
      <!--COM origin wrt jRightHip-->
      <origin xyz="0           0    -0.22449" rpy="0 0 0" />
      <inertia ixx="0.13681" iyy="0.13681" izz="0.01241" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightHip-->
      <origin xyz="0           0    -0.22449" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.44898" radius="0.0565"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightHip-->
      <origin xyz="0           0    -0.22449" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.44898" radius="0.0565"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른쪽 경골 -->
  <link name="RightLowerLeg_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightLowerLeg_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightLowerLeg">
    <inertial>
      <mass value="2.2703"/>
      <!--COM origin wrt jRightKnee-->
      <origin xyz="0           0    -0.20304" rpy="0 0 0" />
      <inertia ixx="0.031992" iyy="0.031992" izz="0.0015867" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightKnee-->
      <origin xyz="0           0    -0.20304" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.40608" radius="0.037388"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightKnee-->
      <origin xyz="0           0    -0.20304" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.40608" radius="0.037388"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른발 -->
  <link name="RightFoot_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightFoot_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightFoot">
    <inertial>
      <mass value="0.8086"/>
      <!--COM origin wrt jRightAnkle-->
      <origin xyz="0.054652           0   -0.039254" rpy="0 0 0" />
      <inertia ixx="0.00079209" iyy="0.0025944" izz="0.0025558" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightAnkle-->
      <origin xyz="0.054652           0   -0.039254" rpy="0 0 0" />
      <geometry>
        <box size="0.17983    0.074775    0.078509"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightAnkle-->
      <origin xyz="0.054652           0   -0.039254" rpy="0 0 0" />
      <geometry>
        <box size="0.17983    0.074775    0.078509"/>
      </geometry>
    </collision>

  </link>

  <!-- 오른발가락 -->
  <link name="RightToe_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightToe_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="RightToe">
    <inertial>
      <mass value="0.0933"/>
      <!--COM origin wrt jRightBallFoot-->
      <origin xyz="0.030086           0           0" rpy="0 0 0" />
      <inertia ixx="4.5038e-05" iyy="2.9717e-05" izz="7.1624e-05" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jRightBallFoot-->
      <origin xyz="0.030086           0           0" rpy="0 0 0" />
      <geometry>
        <box size="0.060173    0.074775    0.014191"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jRightBallFoot-->
      <origin xyz="0.030086           0           0" rpy="0 0 0" />
      <geometry>
        <box size="0.060173    0.074775    0.014191"/>
      </geometry>
    </collision>
  </link>
  <!--Chain from (20) to (23)-->
  <!-- 왼쪽 대퇴골 -->
  <link name="LeftUpperLeg_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftUpperLeg_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftUpperLeg">
    <inertial>
      <mass value="7.775"/>
      <!--COM origin wrt jLeftHip-->
      <origin xyz="0           0    -0.22449" rpy="0 0 0" />
      <inertia ixx="0.13681" iyy="0.13681" izz="0.01241" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftHip-->
      <origin xyz="0           0    -0.22449" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.44898" radius="0.0565"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftHip-->
      <origin xyz="0           0    -0.22449" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.44898" radius="0.0565"/>
      </geometry>
    </collision>

  </link>
  <!-- 왼쪽 경골 -->
  <link name="LeftLowerLeg_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftLowerLeg_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftLowerLeg">
    <inertial>
      <mass value="2.2703"/>
      <!--COM origin wrt jLeftKnee-->
      <origin xyz="0           0    -0.20304" rpy="0 0 0" />
      <inertia ixx="0.031992" iyy="0.031992" izz="0.0015867" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftKnee-->
      <origin xyz="0           0    -0.20304" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.40608" radius="0.037388"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftKnee-->
      <origin xyz="0           0    -0.20304" rpy="0 0 0" />
      <geometry>
        <cylinder length="0.40608" radius="0.037388"/>
      </geometry>
    </collision>

  </link>
  <!-- 왼발 -->
  <link name="LeftFoot_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftFoot_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftFoot">
    <inertial>
      <mass value="0.8086"/>
      <!--COM origin wrt jLeftAnkle-->
      <origin xyz="0.054652           0   -0.039254" rpy="0 0 0" />
      <inertia ixx="0.00079209" iyy="0.0025944" izz="0.0025558" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftAnkle-->
      <origin xyz="0.054652           0   -0.039254" rpy="0 0 0" />
      <geometry>
        <box size="0.17983    0.074775    0.078509"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftAnkle-->
      <origin xyz="0.054652           0   -0.039254" rpy="0 0 0" />
      <geometry>
        <box size="0.17983    0.074775    0.078509"/>
      </geometry>
    </collision>

  </link>
  <!-- 왼발가락 -->
  <link name="LeftToe_f1">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftToe_f2">
    <inertial>
      <mass value="0.1"/>
      <origin xyz="0 0 0" rpy="0 0 0" />
      <inertia ixx="1e-2" iyy="1e-2" izz="1e-2" ixy="0" ixz="0" iyz="0"/>
    </inertial>
  </link>
  <link name="LeftToe">
    <inertial>
      <mass value="0.0933"/>
      <!--COM origin wrt jLeftBallFoot-->
      <origin xyz="0.030086           0           0" rpy="0 0 0" />
      <inertia ixx="4.5038e-05" iyy="2.9717e-05" izz="7.1624e-05" ixy="0" ixz="0" iyz="0"/>
    </inertial>

    <visual>
      <!--box origin wrt jLeftBallFoot-->
      <origin xyz="0.030086           0           0" rpy="0 0 0" />
      <geometry>
        <box size="0.060173    0.074775    0.014191"/>
      </geometry>
      <material name="color"/>
    </visual>

    <collision>
      <!--box origin wrt jLeftBallFoot-->
      <origin xyz="0.030086           0           0" rpy="0 0 0" />
      <geometry>
        <box size="0.060173    0.074775    0.014191"/>
      </geometry>
    </collision>
  </link>

  <!-- 관절 -->
  <!--JOINTS-->
  <!--Chain from (2) to (7)-->
  <!-- 골반과 허리뼈 L5 사이의 조인트 X, Y, Z-->
  <joint name="jL5S1_rotx" type="fixed">
    <origin xyz="-0.000206           0    0.098478" rpy="0 0 0"/>
    <parent link="Pelvis"/>
    <child link="L5_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jL5S1_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="L5_f1"/>
    <child link="L5_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jL5S1_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="L5_f2"/>
    <child link="L5"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 허리뼈 L4 허리뼈 L3 사이의 조인트 X, Y, Z-->
  <joint name="jL4L3_rotx" type="fixed">
    <origin xyz="0.000374           0    0.095104" rpy="0 0 0"/>
    <parent link="L5"/>
    <child link="L3_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jL4L3_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="L3_f1"/>
    <child link="L3_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jL4L3_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="L3_f2"/>
    <child link="L3"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 허리뼈 L1와 등뼈 T12 사이의 조인트 X, Y, Z-->
  <joint name="jL1T12_rotx" type="fixed">
    <origin xyz="0           0    0.085916" rpy="0 0 0"/>
    <parent link="L3"/>
    <child link="T12_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jL1T12_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="T12_f1"/>
    <child link="T12_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jL1T12_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="T12_f2"/>
    <child link="T12"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 등뼈 T9와 등뼈 T8 사이의 조인트 X, Y, Z-->
  <joint name="jT9T8_rotx" type="fixed">
    <origin xyz="0           0    0.085916" rpy="0 0 0"/>
    <parent link="T12"/>
    <child link="T8_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jT9T8_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="T8_f1"/>
    <child link="T8_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jT9T8_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="T8_f2"/>
    <child link="T8"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 허리뼈 T1와 경추 C7 사이의 조인트 X, Y, Z-->
  <joint name="jT1C7_rotx" type="fixed">
    <origin xyz="0           0     0.11975" rpy="0 0 0"/>
    <parent link="T8"/>
    <child link="Neck_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jT1C7_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="Neck_f1"/>
    <child link="Neck_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jT1C7_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="Neck_f2"/>
    <child link="Neck"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 경추 C1과 머리 사이의 조인트 X, Y, Z-->
  <joint name="jC1Head_rotx" type="fixed">
    <origin xyz="0.000152           0    0.089252" rpy="0 0 0"/>
    <parent link="Neck"/>
    <child link="Head_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jC1Head_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="Head_f1"/>
    <child link="Head_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jC1Head_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="Head_f2"/>
    <child link="Head"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!--Chain from (8) to (11)-->
  <!-- Shouler -->
  <!-- 경추 C7과 오른쪽 어깨 사이의 조인트 X, Y, Z-->
  <joint name="jRightC7Shoulder_rotx" type="fixed">
    <origin xyz="0   -0.026313    0.067052" rpy="0 0 0"/>
    <parent link="T8"/>
    <child link="RightShoulder_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightC7Shoulder_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightShoulder_f1"/>
    <child link="RightShoulder_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightC7Shoulder_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightShoulder_f2"/>
    <child link="RightShoulder"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른쪽 어깨와 상완 사이의 조인트 X, Y, Z-->
  <joint name="jRightShoulder_rotx" type="revolute">
    <origin xyz="0    -0.13047           0" rpy="0 0 0"/>
    <parent link="RightShoulder"/>
    <child link="RightUpperArm_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightShoulder_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightUpperArm_f1"/>
    <child link="RightUpperArm_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightShoulder_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightUpperArm_f2"/>
    <child link="RightUpperArm"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른쪽 상완과 전완 사이의 조인트 X, Y, Z-->
  <joint name="jRightElbow_rotx" type="revolute">
    <origin xyz="0    -0.26994           0" rpy="0 0 0"/>
    <parent link="RightUpperArm"/>
    <child link="RightForeArm_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightElbow_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightForeArm_f1"/>
    <child link="RightForeArm_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightElbow_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightForeArm_f2"/>
    <child link="RightForeArm"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른쪽 전완과 손사이의 조인트 X, Y, Z: 오른쪽 팔목 -->
  <joint name="jRightWrist_rotx" type="fixed">
    <origin xyz="7.7e-05    -0.22247           0" rpy="0 0 0"/>
    <parent link="RightForeArm"/>
    <child link="RightHand_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightWrist_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightHand_f1"/>
    <child link="RightHand_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightWrist_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightHand_f2"/>
    <child link="RightHand"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른손과 손가락 사이의 조인트 -->
  <joint name="jRightHandCOM" type="fixed">
    <origin xyz="0 -0.096206 0" rpy="0 0 0"/>
    <parent link="RightHand"/>
    <child link="RightHandCOM"/>
    <axis xyz="0 0 0" />
  </joint>
  <!--Chain from (12) to (15)-->
  <!-- 경추 C7과 왼쪽 어깨 사이의 조인트 X, Y, Z-->
  <joint name="jLeftC7Shoulder_rotx" type="fixed">
    <origin xyz="0    0.026313    0.067052" rpy="0 0 0"/>
    <parent link="T8"/>
    <child link="LeftShoulder_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftC7Shoulder_roty" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftShoulder_f1"/>
    <child link="LeftShoulder_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftC7Shoulder_rotz" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftShoulder_f2"/>
    <child link="LeftShoulder"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼쪽 어깨와 상완 사이의 조인트 X, Y, Z-->
  <joint name="jLeftShoulder_rotx" type="revolute">
    <origin xyz="0     0.13047           0" rpy="0 0 0"/>
    <parent link="LeftShoulder"/>
    <child link="LeftUpperArm_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftShoulder_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftUpperArm_f1"/>
    <child link="LeftUpperArm_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftShoulder_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftUpperArm_f2"/>
    <child link="LeftUpperArm"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼쪽 상완과 전완 사이의 조인트 X, Y, Z-->
  <joint name="jLeftElbow_rotx" type="revolute">
    <origin xyz="0     0.26994           0" rpy="0 0 0"/>
    <parent link="LeftUpperArm"/>
    <child link="LeftForeArm_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftElbow_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftForeArm_f1"/>
    <child link="LeftForeArm_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftElbow_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftForeArm_f2"/>
    <child link="LeftForeArm"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼쪽 전완과 손사이의 조인트 X, Y, Z: 왼쪽 팔목 -->
  <joint name="jLeftWrist_rotx" type="revolute">
    <origin xyz="7.7e-05     0.22247           0" rpy="0 0 0"/>
    <parent link="LeftForeArm"/>
    <child link="LeftHand_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftWrist_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftHand_f1"/>
    <child link="LeftHand_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftWrist_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftHand_f2"/>
    <child link="LeftHand"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼손과 손가락 사이의 조인트 -->
  <joint name="jLeftHandCOM" type="fixed">
    <origin xyz="0 0.096206 0" rpy="0 0 0"/>
    <parent link="LeftHand"/>
    <child link="LeftHandCOM"/>
    <axis xyz="0 0 0" />
  </joint>
  <!--Chain from (16) to (19)-->
  <!-- 골반과 오른쪽 대퇴골 사이의 조인트 X, Y, Z: 엉덩이 -->
  <joint name="jRightHip_rotx" type="revolute">
    <origin xyz="0.000103   -0.081614    0.001009" rpy="0 0 0"/>
    <parent link="Pelvis"/>
    <child link="RightUpperLeg_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightHip_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightUpperLeg_f1"/>
    <child link="RightUpperLeg_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightHip_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightUpperLeg_f2"/>
    <child link="RightUpperLeg"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른쪽 대쾌골과 경골 사이의 조인트 X, Y, Z: 오른 무릎 -->
  <joint name="jRightKnee_rotx" type="revolute">
    <origin xyz="3.6e-05           0    -0.44898" rpy="0 0 0"/>
    <parent link="RightUpperLeg"/>
    <child link="RightLowerLeg_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightKnee_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightLowerLeg_f1"/>
    <child link="RightLowerLeg_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightKnee_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightLowerLeg_f2"/>
    <child link="RightLowerLeg"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른쪽 경골과 발 사이의 조인트 X, Y, Z: 오른 발목 -->
  <joint name="jRightAnkle_rotx" type="revolute">
    <origin xyz="0.000205           0    -0.40608" rpy="0 0 0"/>
    <parent link="RightLowerLeg"/>
    <child link="RightFoot_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightAnkle_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightFoot_f1"/>
    <child link="RightFoot_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightAnkle_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightFoot_f2"/>
    <child link="RightFoot"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 오른발과 발가락 사이의 조인트 X, Y, Z -->
  <joint name="jRightBallFoot_rotx" type="revolute">
    <origin xyz="0.14456           0   -0.064752" rpy="0 0 0"/>
    <parent link="RightFoot"/>
    <child link="RightToe_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jRightBallFoot_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightToe_f1"/>
    <child link="RightToe_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jRightBallFoot_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="RightToe_f2"/>
    <child link="RightToe"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!--Chain from (20) to (23)-->
  <!-- 골반과 왼쪽 대퇴골 사이의 조인트 X, Y, Z: 엉덩이 -->
  <joint name="jLeftHip_rotx" type="revolute">
    <origin xyz="0.000103    0.081614    0.001009" rpy="0 0 0"/>
    <parent link="Pelvis"/>
    <child link="LeftUpperLeg_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftHip_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftUpperLeg_f1"/>
    <child link="LeftUpperLeg_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftHip_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftUpperLeg_f2"/>
    <child link="LeftUpperLeg"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼쪽 대쾌골과 경골 사이의 조인트 X, Y, Z: 왼 무릎 -->
  <joint name="jLeftKnee_rotx" type="revolute">
    <origin xyz="3.6e-05           0    -0.44898" rpy="0 0 0"/>
    <parent link="LeftUpperLeg"/>
    <child link="LeftLowerLeg_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftKnee_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftLowerLeg_f1"/>
    <child link="LeftLowerLeg_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftKnee_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftLowerLeg_f2"/>
    <child link="LeftLowerLeg"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼쪽 경골과 발 사이의 조인트 X, Y, Z: 왼 발목 -->
  <joint name="jLeftAnkle_rotx" type="revolute">
    <origin xyz="0.000205           0    -0.40608" rpy="0 0 0"/>
    <parent link="LeftLowerLeg"/>
    <child link="LeftFoot_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftAnkle_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftFoot_f1"/>
    <child link="LeftFoot_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftAnkle_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftFoot_f2"/>
    <child link="LeftFoot"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>
  <!-- 왼발과 발가락 사이의 조인트 X, Y, Z -->
  <joint name="jLeftBallFoot_rotx" type="revolute">
    <origin xyz="0.14456           0   -0.064752" rpy="0 0 0"/>
    <parent link="LeftFoot"/>
    <child link="LeftToe_f1"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="1 0 0" />
  </joint>
  <joint name="jLeftBallFoot_roty" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftToe_f1"/>
    <child link="LeftToe_f2"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 1 0" />
  </joint>
  <joint name="jLeftBallFoot_rotz" type="revolute">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <parent link="LeftToe_f2"/>
    <child link="LeftToe"/>
    <dynamics damping="0.1" friction="0.0"/>
    <limit effort="30" velocity="1.0" lower="-10.0" upper="10.0" />
    <axis xyz="0 0 1" />
  </joint>

  <!-- 월드 기준 -->
  <link name="world"/>

  <!-- 월드와 골반 고정 -->
  <joint name="human_fixed_joint" type="fixed">
    <parent link="world" />
    <child  link = "Pelvis" />
    <origin xyz="1 1 0.95" rpy="0 0 ${-0.5*pi}" />
  </joint>

  <ros2_control name="GazeboSystem" type="system">
    <hardware>
      <plugin>gazebo_ros2_control/GazeboSystem</plugin>
    </hardware>
    <joint name="jRightElbow_rotx">
      <command_interface name="position">
        <param name="min">1.79</param>
        <param name="max">6.28</param>
      </command_interface>
      <state_interface name="position"/>
      <state_interface name="velocity"/>
    </joint>
  </ros2_control>

</robot>

```
