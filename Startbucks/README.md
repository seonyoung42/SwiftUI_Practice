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
