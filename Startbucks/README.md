# StarBucks

## Stack vc LazyStack vs List
### HStack
> 초기화 시점에 모든 View 생성
+ 앱의 메모리, 퍼포먼스에 좋지 않음

### LazyHStack
> 초기화 시점에 모든 Cell을 생성하지 않음
+ 최대 31개까지의 cell 생성

### List
> 초기화 시점에 모든 Cell을 생성하지 않음
+ UITableView와 유사하게 보여질 필요가 있는 Cell만 생성
+ Cell의 삭제, 추가 가능이 있음

<br>

## State vs Binding vs ObservedObject
### @State
> View State: 화면 상태를 나타내거나 표현할 때 사용되는 타입
+ String, Int, Bool 과 같은 간단한 값을 저장하고 View의 상태를 표시하기 위해 사용

```
@State private var isDisabled = true
```
+ 화면 내부에서만 사용되기 때문에 반드시 'private' 로 설정

<br>

### @Binding
> 다른 값을 Binding 하는 property wrapper 타입
+ childView에서 ParentView의 값을 표시하고, 능동적으로 값이 변화할 때 사용

```
Struct ParentView: View {
    @State private var isDisabled = true 
    
    var body: some View {
        ChildView(isDisabled:$isDisabled)
    }
}

Struct ChildView: View {
    @Binding private var isDisabled: Bool
}

```


### @ObservedObject
> Model Data: 실제 저장되거나 사용되는 데이터로 화면과 Binding 할 때 사용되는 타입

```
class ButtonModel: ObservableObject {
    @Published var isDisabled = true
}

Struct ParentView: View {
    @ObservedObject var buttonModel = ButtonModel()
    
    var body: some View {
        ChildView(isDisabled:$buttonModel.isDisabled)
    }
}

Struct ChildView: View {
    @Binding private var isDisabled: Bool
}

```
