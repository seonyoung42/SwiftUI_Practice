# WeSplit

## [1. Form](https://developer.apple.com/documentation/swiftui/form)
SwiftUI는 Form 안에 포함된 View들을 플랫폼에 적절한 스타일을 적용하여 그룹화 한다.

### Form 사용하기

```
var body: some View {
         Form {
             Group {
                 Text("Hello, World!")
                 Text("Hello, World!")
                 Text("Hello, World!")
             }

             Group {
                  Text("Hello, World!")
                  Text("Hello, World!")
                  Text("Hello, World!")
              }

             Section {
                 Text("Hello, World!")
                 Text("Hello, World!")
                 Text("Hello, World!")
             }
         }
     }
```
+ Form은 최대 10개의 컴포넌트를 포함할 수 있다.
+ 10개 이상의 컴포넌트를 Form에 넣고 싶다면 Group 또는 Section을 사용할 수 있다.
+ Group간 분리를 두고 싶다면 Section을 사용하면 된다.

## [2. NavigationView](https://developer.apple.com/documentation/swiftui/navigationview) - deprecated
view stack을 표현해주는 view

### NavigationView 사용하기

```
NavigationView {
             Form {
                 Group {
                     Text("Hello, World!")
                     Text("Hello, World!")
                     Text("Hello, World!")
                 }

                 Group {
                      Text("Hello, World!")
                      Text("Hello, World!")
                      Text("Hello, World!")
                  }

                 Section {
                     Text("Hello, World!")
                     Text("Hello, World!")
                     Text("Hello, World!")
                 }
             }
             .navigationTitle("Swift UI")
             .navigationBarTitleDisplayMode(.inline)
```
+ navigationBarTitleDisplayMode 로 네비게이션 타이틀 폰트 크기 설정한다.

## [3. @State](https://developer.apple.com/documentation/swiftui/state)
SwiftUI가 제공하는 propertyWrapper 타입으로 값을 읽고 쓸 수 있게 한다.

```
struct ContentView: View {
    var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}
```
SwiftUI에서 View는 struct이기 때문에 이 struct 내의 프로퍼티(tapCount)의 값을 변경시키기 위해서는 mutating 키워드가 필요하다. 그러나 var body 앞에는 mutating 키워드를 작성할 수 없다. 따라서 이를 해결하기 위해 SwiftUI는 @State 라는 propertywrapper 타입을 제공한다.

```
struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}
```
+ 다음과 같이 작성하면 tapCount 값을 이제 변경하 수 있다.
+ @State 는 한 View 내에 저장되어있는 프로퍼티를 위해 고안된 것이기 때문에 private 키워드도 함께 사용하여 접근 제어를 수행한다.
+ @State 로 선언된 프로퍼티가 변경되면 해당 View는 최신 값이 반영되도로 즉시 업데이트 된다.

## [4. $, @Binding](https://developer.apple.com/documentation/swiftui/binding)
신뢰할 수 있는 파일의 값을 읽고 쓸 수 있는 propertywrapper 타입
@State로 선언된 값을 다른 뷰에서 사용하려고 할 때 @Binding 키워드를 사용해서 사용할 수 있다. 
@State로 선언된 값에 변경이 생기면 @Binding 변수에서 이를 인지하고 해당 값에 맞게 바로 뷰를 업데이트한다.

```
struct ContentView: View {
     @State private var name = ""

     var body: some View {
         Form {
             TextField("Enter your name!", text: $name)
             Text("Your name is \(name)")
         }
     }
}

```
+ textField 안에 있는 text가 무엇이드 이것이 Text로 보여져야하기 때문에 two-way binding이 필요한 상황이다 
     + two-way binding : 프로퍼티의 value 롤 textField에서 보여주고, textField가 변할 때 프로퍼티를 업데이트 함, $으로 표시 
+ $ : 프로퍼티를 읽을 수도 있고 어떠하 변화가 생겼으 때 해당 프로퍼티르 다시 작성할 수도 있음을 나타냄


