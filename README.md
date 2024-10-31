# Calculator Simulator
---

## 소개
계산기의 기본 기능인 덧셈, 뺄셈, 곱셈, 나눗셈에 더불어 나머지 연산처리가 가능한 기능을 구현하였습니다. 실제 계산기 UI 버튼과 연결되는 메소드라고 생각하며 구현하였습니다. 첫 번째 값을 받고 -> 연산자 버튼을 누르고 -> 두 번째 값을 받고 -> 등호를 눌러 값이 프린트됩니다. 만약, 하나의 값이라도 부족하다면 입력값 부족 메시지가 프린트됩니다.

---

## 개요
|개발 기간|인원|개발 언어|개발 환경|
|------|--|------|------|
|24.10.30 - 31|1인|Swift|OS: macOS 15.0.1, IDE: Xcode 16.1|

---

## 학습 내용
- protocol은 상속이 아닌 채택!
프로토콜을 이용하여 특정 역할을 수행하기 위한 요구 사항(메소드, 프로퍼티, 이니셜 라이저)을 구현해 줄 수 있음
프로토콜은 채택, 준수한다고 함.

- 모듈화? 캡슐화? 클래스 - 단일 책임 원칙!
보통 Swift에서 `모듈`이라 함은 Swift Package나 CocoaPods와 같이 독립적으로 컴파일되는 것을 의미한다.
플레이그라운드의 파일에서 모두 public으로 주어야했던 이유도 이와 연결된다. 플레이그라운드가 독립적인 모듈로써 존재하기 때문에 
- `open` : 개방 접근 수준 (모듈 외부까지), 클래스에만 사용
- `public` : 공개 접근 수준 (모듈 외부까지)
- `internal` : 내부 접근 수준 (모듈 내부)
- `fileprivate` : 파일 외부 비공개 접근 수준 (파일 내부)
- `private` : 비공개 접근 수준 (기능 정의 내부)
위와 같은 접근 수준에 따라 `public`을 주어 접근이 가능하도록 해야 했다.

이번에 class를 각 연산에 따라 분리한 것은 모듈화가 아니라 `캡슐화`라고 할 수 있겠다.
객체 지향 프로그래밍의 SOLID 원칙에 따라 클래스는 오직 하나의 책임만을 가지며, 이 책임을 완전히 캡슐화해야 한다.
클래스가 과도하게 많은 일을 담당하게 되면, 해당 기능을 수정하는데에 필요한 노력이 늘어난다.
또, 캡슐화는 변수와 함수를 하나의 단위로 묶는 것을 의미하며, 대체적으로 클래스를 통해 구현한다.
클래스나 메소드가 한 가지의 일만 수행하는 것으로 제한함으로써 코드의 유지 관리를 용이하게 할 수 있다.

- 추상화를 통한 클래스 간의 결합도, 의존성 역전 원칙
추상화 객체 지향의 특징 중 하나가 다형성.
스위프트의 타입이 선언된 하나의 타입에는 그 타입의 인스턴스만 올 수 있는데, 이 경우 유연한 코드를 짜기 힘들다. (ex. AddOperation타입에는 AddOperation 인스턴스만 할당 가능) 추상화를 통해 해당 프로토콜 타입으로 사용할 있다. (ex. AbstractOperation타입에 AddOperation, SubtractOperation 인스턴스등 해당 타입의 프로토콜을 채택하고 있다면 할당 가능)

의존성 역전 원칙이란 추상화에 의존해야지, 구체화에 의존해서는 안된다는 원칙이다. 의존 관계를 맺을때 자신보다 변화하기 쉬운 것을 의존해서는 안되고, 거의 변화가 없는 개념에 의존해야 한다. 이번 프로젝트에서 Calculator에서 모든 연산 클래스를 인스턴스화 했던 것은 구체화에 의존했던 것이고, 이를 AbstractOperation 타입의 파라미터로 받게 수정함으로써 추상화에 의존하게 된것이다.

- class에 암시적으로 있는 internal init
'AddOperation' initializer is inaccessible due to 'internal' protection level
-> 클래스에 init()을 구현하지 않았다면, iternal 수준의 이니셜라이저가 암묵적으로 생성된다.
따라서 클래스에 public init () {} 으로 외부 모듈을 가져올 수 있도록 접근 수준을 설정해주어야 한다.
만약, 플레이그라운드라는 다른 모듈이 아닌 스위프트 파일 내에서 해당 클래스의 인스턴스르 구현 했더라면 동일 모듈 내이므로 pulic 접근 제한자가 필요 없고, 굳이 이니셜라이저를 생성해주지 않더라도 internal 수준의 이니셜라이저가 생긴다.

이니셜라이저는 왜 필요한가? class든 struct든 인스턴스로써 메모리에 올라가려면 해당 멤버변수에 값이 있어야 한다. 초기화를 통해 필수적으로 이 값을 할당해야하고, 반대로 실제로 멤버변수가 없는 상태에서는 class나 struct 모두 이니셜라이저를 쓰지 않아도 정상적으로 구현된다.

- default 값과 initial 값의 차이
Swift 도큐먼트에서도 해당 용어를 혼용, 클래스가 메모리에 올라가면서 초기화 과정이 필요하고 이때 기본값이나 초기값이 할당되기 때문에 동일하다고 봐도 무방할 것이다.
