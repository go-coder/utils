# utils/sets

## 这是什么

这是一个set库，包含了常用的几种Set类型:byte、int、int32、int64、string。

fork from [`k8s.io/apimachinery/pkg/util/sets`](https://github.com/kubernetes/apimachinery/tree/release-1.15/pkg/util/sets)

由于Golang目前不支持泛型（1.12），所以类似于Set这种类型只能每种类型写一套，或者使用code-generator来生成（参考[types.go](./types/types.go)中的`//go:generate`）。但是据说常用类型就那几个，所以其实也还能忍一忍。

使用map来实现set是常用技巧，这里使用map[XXX]struct{}而不是map[XXX]bool是因为Go语言的一个特性：空struct不分配内存，所以使用struct{}能最大限度节约内存。

## 基本用法

```Golang
import "github.com/go-coder/utils/pkg/sets"

func main() {
    var stringSet sets.String = sets.NewString("a", "b", "c")
    stringSet.Insert("foo", "bar")
    stringSet.Delete("foo", "bar")
}
```
更多用法参见[set_test.go](./set_test.go)