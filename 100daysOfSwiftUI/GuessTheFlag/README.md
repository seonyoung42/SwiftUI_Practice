# GuessTheFlag

## 구현 화면
<img src = "https://user-images.githubusercontent.com/77603632/221774568-376097b9-bf9d-4cd1-b4eb-e19a191f11df.png" width="200" height="400"> 

### 1. VStack, HStack, ZStack

```
VStack(alignment: .leading, spacing: 20) {
  Text("Hello, world!")
  Text("This is other text")
}

HStack {
  Text("Hello, world!")
  Text("This is other text")
}

ZStack {
  Text("Hello, world!")
  Text("This is other text")
}
```
+ VStack : 수직으로 쌓는 Stack
  + alignment를 설정하지 않으면 .center, spacing 설정하지 않으면 default 값 (HStack도 동일함)
+ HStack : 수평으로 쌓는 Stack
+ ZStack : 3차원으로 위로 쌓는 Stack
  + ZStack에서 먼저 들어가 컴포넌트가 아래에 위치함. This is other text 아래에 Hello, world! 가 위치하게 된다.
  + Gradient를 사용해서 배경에 효과르 주고 싶을 때 ZStack를 사용한다.


### 2. ForegroundStyle, [Meterial](https://developer.apple.com/documentation/swiftui/material)
```
Text("Content")
  .foregroundStyle(.secondary)
  .background(.ultraThinMaterial)
```
+ SwiftUI에서는 foregroundColor 뿐만 아니라 foregroundStyle도 지원하는데, 이는 텍스트의 색에 배경색이 반영되게 하는 효과를 준다.
+ Meterial 은 배경의 재질 타입으로 배경에 블러효과를 줄 수 있는 struct이다. 그 종류에 따라 블러 정도가 결정된다

### 3. Button
```
Button("Button 1") { }
  .buttonStyle(.bordered)
Button("Button 2", role:  .destructive) { }
  .buttonStyle(.bordered)
Button("Button 3") { }
  .buttonStyle(.borderedProminent)
Button("Button 4", role: .destructive) { }
  .buttonStyle(.borderedProminent)
  .tint(.mint)
```
+ UIKit에서와 동일하게 buttonStyle로 지정하 수 있고, role을 .destructive 로 설정하면 빨간색으로 설정된다.
  + 그러나 이 default 색상 또한 tint로 바꿀 수 있다.
```
Button {
  print("text")
} label: {
  Image(systemName: "pencil")
  Text("Tap me!")
    .padding()
    .foregroundColor(.white)
    .background(.blue)
}

Button {
  print("text")
} label: {
  Label("Tap me!", systemImage: "pencil")
}
```
+ button을 더 커스텀하고 싶다면 다음과 같이 label에 이미지와 텍스트를 함께 넣거나 Label을 만들어 설정할 수도 있다.

### 4. Alert 
SwiftUI에서는 UIKit 처럼 이벤트 기반의 흐름이 아니기 때문에 alert를 보여주는 함수를 사용하지 않는다. 따라서, 'showAlert()' 와 같은 함수 대신, alert가 보여져야하는 조건을 만든다.
```
@State private var showingAlert = false

Button("Show Alert") {
  showingAlert = true
}
.alert("Important Message", isPresented: $showingAlert)  {
  Button("Delete", role: .destructive) { }
  Button("Cancel", role: .cancel) { }
} message: {
  Text("Please read this")
}

```
+ @State 를 사용해서 alert가 보여지는지 여부를 추적한다.
+ 사용자 인터페이스(여기서는 Button) 아래에 .alert를 첨부해서 @State(=showingAlert)에 따라 alert를 보여주도록 한다.
+ isPresented가 alert가 dismiss될 때 showingAlert를 false로 만들기 때문에 two-way binding을 나타내느 키워드('$')를 사용한다. 
+ SwiftUI에서 alert의 Button은 기본으로 해당 alert를 dismiss 시킨다.
   
