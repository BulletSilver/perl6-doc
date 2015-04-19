在 Perl6 中，每个值都属于一种数据类型。基本的数据类型有，Str（字符串），Int（整数）等。
对象也定义了一种数据类型。

Perl6 首创了 Junction 的数据类型，这种数据类型好像变幻的光球一般，时刻都会变成
某种基本的数据类型。另外还有枚举(Enum), 列表(List), 散列(Hash), 等数据类型。

默认情况下，变量所在的容器内可以放置任何数据类型：

    > my $x = 3
    3
    > $x.WHAT
    > say $x.WHAT
    (Int)
    > $x = 'x'
    x
    > say $x.WHAT
    (Str)

如果在定义变量时，指定了变量的类型，那么这个变量就不能再变更数据类型：

    > my Int $y = 4
    4
    > $y = 'y'
    Type check failed in assignment to '$y'; expected 'Int' but got 'Str'
    in block <unit> at <unknown file>:1

浮点数的数据类型是 (Rat), 而列表的数据类型是 (Parcel), 而 Hash 是由 （Pair）组成的, [] 方括号包围的容器叫 Array, 而大括号 {} 包围的容器
叫 Hash：

    > 3.14.WHAT
    > say 3.14.WHAT
    (Rat)
    > say (1,2,3).WHAT
    (Parcel)
    > say (1 => 2).WHAT
    (Pair)
    > say {1 => 2, 3 => 4}.WHAT
    (Hash)
    > say [1 => 2, 3 => 4].WHAT
    (Array)

## Bool 布尔值

`False` 为假，`True` 为真：

    if !False { say 'False is Bool::False' }
    if True   { say 'True is Bool::True' }

`0`, 空字符串`''`，`Nil` 为假，其余的值都为真：

    if !0   { say '0 is False' }
    if !''  { say q<'' is False> }
    if !Nil { say q<Nil is False> }


