# human  모델 조사

gazebo에서 사용할 수 있는 인간 모델 조사

### URDF를 이용하여 human 모델링한 사례&#x20;

* 관절이 있는 타입: human-gazebo, 사람의 관절을 link와 joint를 구성
  * [https://github.com/robotology/human-gazebo/tree/master/humanSubject01](https://github.com/robotology/human-gazebo/tree/master/humanSubject01)&#x20;
* 관절이 없는 타입:  3d collada 파일에 애니메이션 추가하여 사용
  * [https://classic.gazebosim.org/tutorials?tut=actor\&cat=build\_robot](https://classic.gazebosim.org/tutorials?tut=actor\&cat=build\_robot)&#x20;
* 피부가 있는 타입: makehuman 이용하여 인간 모델을 3d collada파일 보내고, urdf로 조립&#x20;
  * [https://github.com/valegagge/humanModels](https://github.com/valegagge/humanModels)

### human gazebo

<figure><img src="https://user-images.githubusercontent.com/35487806/84712016-e2377900-af67-11ea-8c5e-8a7084f474a7.png" alt=""><figcaption></figcaption></figure>

#### human gazebo udf 생성기(파이썬)

[https://github.com/ami-iit/human-model-generator](https://github.com/ami-iit/human-model-generator)

<figure><img src="https://user-images.githubusercontent.com/10923418/129881033-4b926fa2-993c-4b92-b4af-f1f768940d56.png" alt=""><figcaption></figcaption></figure>

### MakeHuman

MakeHuman 이용하여 Gazebo에 human 모델 추가&#x20;

<figure><img src="https://i.imgur.com/tYoPEKS.png" alt=""><figcaption></figcaption></figure>

MakeHuman: 인간 모델 생성기&#x20;

<div>

<figure><img src="https://i.imgur.com/OMvtscg.png" alt=""><figcaption></figcaption></figure>

 

<figure><img src="https://i.imgur.com/YKJTv62.png" alt=""><figcaption><p>뼈대 생성</p></figcaption></figure>

</div>

### 참고:

* anybody

anybody human-exoskeleton 디자인 도구 https://www.youtube.com/watch?v=jcxjHi0Ngk4 https://www.anybodytech.com

&#x20;[https://www.youtube.com/watch?v=jcxjHi0Ngk4](https://www.youtube.com/watch?v=jcxjHi0Ngk4)

<div>

<figure><img src="https://i.imgur.com/L5jk53f.png" alt=""><figcaption></figcaption></figure>

 

<figure><img src="https://i.imgur.com/Vmj3fHt.png" alt=""><figcaption></figcaption></figure>

</div>

[https://www.youtube.com/watch?v=L75GPf37nAk](https://www.youtube.com/watch?v=L75GPf37nAk)

