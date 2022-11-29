# URDF

URDF(Unified Robot Description Format)는 로봇 모델에 대한 정보들을 명세 하는 파일 포멧

* 로봇의 시각적 모델링&#x20;
* 로봇의 움직임 모델링
* 로봇의 물리적인 성질과 충돌 모델링 &#x20;



링크와 조인트

URDF의 시각적 또는 물리적 모델링의 기본 단위는 링크와 조인트로, 로봇의 각각 요소가 링크가 되고, 링크와 링크의 연결을 조인트로 연결한다.

<figure><img src="http://wiki.ros.org/urdf/XML/link?action=AttachFile&#x26;do=get&#x26;target=inertial.png" alt=""><figcaption><p>링크</p></figcaption></figure>

<figure><img src="http://wiki.ros.org/urdf/XML/joint?action=AttachFile&#x26;do=get&#x26;target=joint.png" alt=""><figcaption><p>조인트</p></figcaption></figure>



마찰력 모델

* mu: 쿨롱 마찰 (Coulomb Friction) 속도의 변화에 반대되는(저항하는) 방향의 마찰
* mu2: 마찰 계수, 마찰력을 수직 접촉력으로 나눈 상대비율
* mu, mu2는 클수록 마찰이 크다.



damping, friction 작동 안하는듯.&#x20;

