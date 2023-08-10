# FindCovid19

## Combine
> Customize handling of asynchronous events by combining event-processing operators
> 이벤트 처리 연산자를 결합하여 비동기 이벤트 처리를 커스터마이징

+ 이벤트 처리 코드를 중앙집중화
+ 중첩된 클러져, 컨벤션 기반 콜백 등 기술들을 제어하여 

코드를 보다 읽기 쉽고 유지 관리할 수 있다.

<br>

### - Publishers
> Expose values that can change over time
> 시간에 따라 변경될 수 있는 값을 노출

### - Subscribers
> Receive valuse from the publishers
> publisher로 부터 해당 값을 받음

<br>

## Combine vs RxSwift

### 1. Publisher vs Observable
#### - Publisher

```
public protocol Publisher { }

struct AnyPublisher: Publisher { }

associatedtype Output

associatedtype Failure: Error
```
+ Publisher는 프로토콜이고 실제 사용되는 것은 Publisher를 채탱하는 AnyPublisher
+ 값 타입인 struct
+ Ouput과 Failure를 이미 가지고 있음

#### - Observable
```
class Observable: ObservableType { }

class Observable<Element>

```
+ reference 타입인 class
+ Element 를 받을 뿐 별도의 Error 타입은 없음

<br>

### 2. Operators
> Combine에만 있는 Operators
> + tryMap, tryFilter, tryCompactMap 등 try를 제공하는 operator가 있음
> + Error 를 더 쉽게 헨들링할 수 있도록 도와줌

```
func map<T>(_ transform: (Output) -> T) -> Just<T>

func tryMap<T>(_ transform: (Output) throws -> T) -> Result<T, Error>.Publisher
```

<br>

### 3. Subject 
> + PassthrouSubject - PublishSubject
> + X         - ReplaySubject
> + CurrentValueSubject - BehaviorSubject

#### - PassthroughSubject - PublishSubject

```
class PassthroughSubject<Output, Failure> {
    public init() { }
}

class PublishSubject<Element> {
    override init() { }
}
```

#### - CurrentValueSubject - BehaviorSubject

```
class CurrentValueSubject<Output, Failure> {
    pulic init(_ value: Output) { }
}

class BehaviorSubject<Element> {
    init(value: Element)
}
```

<br>

### 4. Cancellable - Disposable

```
let cancellables = Set<Cancellable>()

Just(1)
    .sink {
        //
    }
    .store(in: $cancellables)
}


let disposeBag = DisposeBag()

Observable.just(1)
    .subscribe(onNext: {
        //
    })
    .disposed(by: disposeBag)
```

<br>

### 5. Thread Handling

```
Just(1)
    .subscribe(on: DispatchQueue.main)
    .map {}
    .sink {}
```
+ RxSwift의 subscribeOn은 upStream, downStream 모두에 영향을 미치지만
+ Combine의 subscribeOn은 upStream에만 작동한다.
