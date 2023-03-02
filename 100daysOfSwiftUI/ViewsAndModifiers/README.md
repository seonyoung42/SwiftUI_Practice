# ViewsAndModifiers

### 1. SwiftUI의 View들이 Struct인 이유?
UIKit 또는 AppKit 기반의 프로그래밍을 할 때는 struct보단 class로 view를 만들지만 SwiftUI는 그렇지 않다. 그 이유는 무엇일까?
- struct가 class보다 빠르고 간단하기 때문
    - UIKit에서는 수많은 프로퍼티와 메서드를 가지고있는 UIView가 모든 view의 부모이기 때문에 이를 상속받을 때 이 많은 것들을 모두 가지고 있게 된다. 
    - SwiftUI에서는 모든 view들이 사소한 struct이다. 만약 하나의 프로퍼티를 가지는 struct가 있다면, 그 struct는 그것만 가지고 있는 것이다. 현재 보이는 것만 가진다.
- state를 깔끔하게 분리할 수 있게 하기 때문
    - class에서는 그 값을 자유롭게 변경할 수 있기 때문에 복잡한 코드가 되기 쉽다.
