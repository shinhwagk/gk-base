for
```scala
	for( arg <- args )
	  println(arg)
```
* 右侧args为数组
* 左侧arg是val

实际for的写法应该
```scala
    for( 1 <- 0.to(2) )
    	println(i)
```