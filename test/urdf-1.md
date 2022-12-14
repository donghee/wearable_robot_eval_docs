# URDF 링크 수직항력 테스트

### 테스트 목적

웨어러블 로봇이 human 모델에 미끄러지 않고 장착되려면,  웨어러블 로봇 벨트와 human 모델 사이에 수직 항력이 필요하다. gazebo에서 두 모델 사이의  수직항력에 따라 마찰력이 잘 동작하는지 확인을 위해 테스트를 하였다.

### 테스트 방법

모델 링크에 Force를 설정하는Gazebo 플러그인을 만들어서 테스트  수행.  모델 링크에 가해지는 Force 값을 바꾸면서 실험하였다.

```cpp
#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>

namespace gazebo
{
  class ModelPush : public ModelPlugin
  {
    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      this->model = _parent;

      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&ModelPush::OnUpdate, this));
    }

    public: void OnUpdate()
    {
      this->model->GetLink("link")->SetForce(ignition::math::Vector3d(100.0, 0.0, 0.0)); // no slip
      // this->model->GetLink("link")->SetForce(ignition::math::Vector3d(9.0, 0.0, 0.0)); //slip at mu 1.0
    }

    private: physics::ModelPtr model;

    private: event::ConnectionPtr updateConnection;
  };

  GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}
```

### 테스트 수행

1. 회색 Box모델 링크에 X축으로 100 N 힘을 적용 (마찰계수 mu, mu2는 1.0 적용) -> 미끄러지지 않음&#x20;
2. 회색 Box모델 링크에 X축으로 9 N 힘을 적용 (마찰계수 mu, mu2는  1.0 적용) -> 미끄러짐&#x20;
3. 회색 Box모델 링크에 마찰계수 1.0 적용 (X축으로 100 N 힘 적용) -> 미끄러지지 않음
4. 회색 Box모델 링크에 마찰계수 0.08 적용 (X축으로 100 N 힘 적용) -> 미끄러짐&#x20;

{% embed url="https://www.youtube.com/watch?v=oV9835MvBME" %}



