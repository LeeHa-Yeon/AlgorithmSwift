class Person {
		var name: String = ""
		
		func selfIntroduce() {
				print("저는 \(name)입니다.")

		// final 키워드를 사용하여 재정의를 방지할 수 있다.
		final func sayHello() {
				print("hello")
		}

		// 타입 메서드
		// 재정의 불가 타입 메서드 - static
		static func typeMethod() {
				print("type method- static")
		}

		// 재정의 가능 타입 메서드 - class
		class func classMethod(){  $  
				print("type method- class")
		}				

		// 재정의 불가 타입 - final + class
		final class func finalClassMethod(){
				print("type method- final class")
		}		
}

class Studnet: Person {
		// name이란 프로퍼티는 이미 상속을 받아와 쓰고 있기 때문에 굳이 써주지 않아도 된다.
		// var name: String = ""
		var major: String = ""

		// 오버라이드를 하면 덮어쓰여지게 된다.
		override func selfIntroduce(){
				print("저는 \(name)이고, 전공은 \(major)입니다.")
				// 부모클래스의 메서드를 호출하고 싶다면 이렇게 사용하면 된다.
				// super.selfIntroduce()
		}

		// 재정의 가능 타입 메서드 - class
		override class func classMethod(){
				print("overriden type method- class")
		}		

		// static을 사용한 타입 메서드는 재정의 할 수 없다.
		// override static func typeMethod() { }

		// final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없다.
		// override func sayHello() { }
		// override class func finalClassMethod() { }
}

let yagom: Person = Person()
let hana: Student = Student()

yagom.name = "yagom"
hana.name = "hana"
hana.major = "Swift"

yagom.selfIntroduce()
// 저는 yagom입니다,

hana.selfIntroduce()
// 저는 hana이고, 전공은 Swift입니다.

Person.classMethod()
// type method- class

Person.typeMethod()
// type method- static

Person.finalClassMethod()
// type method- final class

Student.classMethod() // 재정의된 상태로 호출
// overriden type method- class

Student.typeMethod()  // 재정의 안된 상태로 호출
// type method- static 

Student.finalClassMethod()  // 재정의 안된 상태로 호출
// type method- final class
