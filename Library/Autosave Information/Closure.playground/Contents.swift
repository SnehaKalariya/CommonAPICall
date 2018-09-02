//: Playground - noun: a place where people can play

getSumOf(a: 10, b: 20) { (sum) in
    print(sum)
}

func getSumOf (a:Int,b:Int,handler:((Int)->Void)){
    let sum = a + b
    print(sum)
    handler(sum)
}
