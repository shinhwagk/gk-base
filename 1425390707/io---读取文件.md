```scala
import scala.io.Source

if (args.length > 0 ){
	for (line <- Source.fromFile(args(0)).getLines)
    	println(line.length + " " + line)
}
else
	Console.err.println("Please enter filename")
```
解释:
* Source.fromFile(args(0))尝试打开指定的文件并返回一个Source对象，在其上调用getLines
* for表达式枚举这些行并答应每行的长度,空格和这行的记录

```scala
import scala.io.Source
def widthOfLength(s: String) = s.length.toString.length 
if (args.length > 0) { 
	val lines = Source.fromFile(args(0)).getLines.toList 
    val longestLine = lines.reduceLeft( 
    	(a, b) => if (a.length > b.length) a else b 
        ) 
   	val maxWidth = widthOfLength(longestLine) 
    for (line <- lines) {
    	val numSpaces = maxWidth widthOfLength(line) 
        val padding = " " * numSpaces 
        print(padding + line.length +" | "+ line) 
    } 
} 
else Console.err.println("Please enter filename")

```