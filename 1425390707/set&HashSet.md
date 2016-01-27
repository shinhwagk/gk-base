定义set
```scala
var jetSet = Set("Boeing","Airbus")
jetSet += "Lear"
println(jetSet.contains("Cessna"))//输出flase
println(jetSet)
```

定义HashMap
```scala
import scala.collention,immutable.HashSet
val hashSet = HashSet("Tomatoes","Chilies")
println(hashSet + "Coriander")
```