## 列表 Array

    > my @list = (1, 2, 3)
    1 2 3

### end

获取最后一个元素的位置：

    > @list.end
    2

### keys

获取每个元素的索引列表：

    > @list.keys
    0 1 2

### values

获取每个元素的值的列表：

    > @list.values
    1 2 3

### kv

获取每个元素的索引和值：

    > @list.kv.perl
    ((0, 1), (1, 2), (2, 3)).list

### pairs

获取每个值的索引和值，组成键值对：

    > @list.pairs.perl
    (0 => 1, 1 => 2, 2 => 3).list

### join

将所有的元素合并起来：

    > @list.join.perl
    "123"

### map

可以针对列表的每个元素进行运算：

    > @list.map: { .WHAT }
    (Int) (Int) (Int)
    > @list.map: {.Str.chars}
    1 1 1

### grep

针对列表的每个元素进行一个规则的筛选：

    > @list.grep: Int
    1 2 3
    > @list.grep: { .Str.chars > 0 }
    1 2 3

### grep-index

获取的是元素的索引：

    > @list.grep-index: { .Str.chars > 0 }
    0 1 2

### first

用于获取满足条件的第一个值：

    > @list.first: * > 0
    1
    > @list.first: Int
    1

### first-index

用户获取第一个满足条件的值的索引：

    > @list.first-index: Int
    0

### Bool

返回非空数组为 True, 否则为 False:

    > @list.Bool
    True
    > ().Bool
    False

### Numeric

和 `elems` 的作用一样，返回数组的元素个数：

    > @list.Numeric
    3

### pick

用于随机的从数组中抽取数据：

    > my @array = <a b c d e>
    a b c d e
    > @array.pick
    e
    > @array.pick(3)
    e c b
    > @array.pick: *
    a c b d e

### permutations

获取元素的所有排列组合：

    > say .join('|') for <a b c>.permutations
    a|b|c
    a|c|b
    b|a|c
    b|c|a
    c|a|b
    c|b|a

### combinations

用于生成不重复的数组：

    > .say for combinations(4,2)
    0 1
    0 2
    0 3
    1 2
    1 3
    2 3

### reverse

用于倒序数组：

    > <hello world>.reverse
    world hello
    > reverse ^10
    9 8 7 6 5 4 3 2 1 0

### rotate 

用于翻转数组：

    > <a b c d e>.rotate(2)
    c d e a b
    > <a b c d e>.rotate(-1)
    e a b c d

### sort

默认的排序是按照 ASCII 值来进行从小到大的排列：

    > <c d e a b>.sort
    a b c d e
    > <1 2 3 4 5 10>.sort
    1 10 2 3 4 5

`sort` 也可以设置排序的规则，字符串对比和数字对比的比较操作符不同：

    > <1 2 3 4 5 10>.sort: { $^b leg $^a }
    5 4 3 2 10 1
    > <1 2 3 4 5 10>.sort: { $^b > $^a }
    10 5 4 3 2 1
    > (3, -4, 7, -1,2,0).sort: { $^b leg $^a }
    7 3 2 0 -4 -1
    > (3, -4, 7, -1,2,0).sort: { $^b > $^a }
    7 3 2 0 -1 -4

## 其他

一些作用于数组的操作符：

    +@list   # 和 @list.elems 一样
    ~@list   # 转换成字符串
    ?@list   # 转换成布尔值，空为假
    !@list   # 转换成布尔值后取反
    %(@list) # 转换成哈希

（未完）
