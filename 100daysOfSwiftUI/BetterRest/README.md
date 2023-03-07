# BetterRest

## 1. Stepper
```
Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
```
+ Stepper의 타이틀을 "\(sleepAmout) hours"로 설정한다.
   + 이때 formatted()를 적용하면 Double 인 sleepAmout를 Swift가 format 한다.
+ Stepper의 value를 sleepAmout 변수에 양방향 바인딩 한다
+ Stepper의 range를 in:.. 매개변수로 설정할 수 있다.
+ Stepper의 value 조절 크기를 step:.. 매개변수로 설정할 수 있다.

## 2. DatePicker
```
DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
```
+ DatePicker의 타이틀을 "Please enter a date"로 설정한다.
  + 타이틀을 없애고 싶은 경우 DatePicker에 .labelsHidden()를 사용하면 된다.   
+ DatePicker의 date를 wakeUp 변수와 양방향 바인딩 한다
+ DatePicker의 선택 가능 date range를 in:.. 매개변수로 설정한다.
  + Date.now... 인 경우 현재 날짜 이후로만 선택이 가능하다
+ DatePicker의 displayedComponents: 로 화면 상에 보여질 날짜 컴포넌트를 설정할 수 있다.

## 3. Date 
```
Text(Date.now, format: .dateTime.day().month().year())
Text(Date.now.formatted(date: .long, time: .shortened))
```
+ format을 사용해서 date중 어떤 component를 보여주고 싶은지 설정할 수 있다.
  + 이때 day, month, year의 순서는 iOS가 사용자의 선호에 맞게 자동으로 format한다.   
+ Date의 formatted를 사용해서 date를 설정할 수도 있다.
  + date(year,month, day, 요일)
    + long: 요일 제외 전부 보여줌 (Ex 2023년 3월 7일)
    + abbreviated: 축약된 월, 일, 년도 형태로 날짜 보여줌 (Ex 2023년 3월 7일)
    + complete: 전부 보여줌 (Ex 2023년 3월 7일 화요일)
    + numeric: 숫자 형태로 보여줌 (Ex 3/7/2023)
    + omitted: 날짜 제거
  + time(시간)
    + complete: 전부 보여줌 (Ex 오후 9:12:14 GMT+9)
    + shortened: 초를 제외한 시간 보여줌 (Ex 오후 9:13)
    + standarad: 시간 보여줌 (Ex 오후 9:13:22)
    + omitted: 시간 제거
 
