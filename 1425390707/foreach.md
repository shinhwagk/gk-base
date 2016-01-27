foreach
```scala
	args.foreach(arg => println(arge))
```
* args是一个数组
* 这个循环就是函数是，args上调用foreach方法，并把它传入函数。

显示的定义类型
```scala
	args.foreach((arg : String) => println(arg))
```

简洁方式
```scala
	args.foreach(println)
```
