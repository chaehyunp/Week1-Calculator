class TestClass {
    let num: Int = 0
    
}

struct TestStruct {
    var num: Int = 1
}



class Test {
    init() {
        TestClass()
        TestStruct()
        TestStruct(num: 8)
    }
}
