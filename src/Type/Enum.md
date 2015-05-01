能否用 Enum 来设置这些东西呢？

Enum 有顺序：

    > my $e = enum <Int Sub>
    EnumMap.new("Int" => 0, "Sub" => 1)

Enum 后面的记录覆盖前面的记录：

Enum 纯粹是为了可读性才设计的：

当时这个东西占用了关键字，还占用了命名空间。

    > enum Day <Sun Mon>
    Day::Sun
    Sun
    Mon

关键字被覆盖没有保护，这个很为危险：
    
    > enum Day <Int Sub>
    # not any warning
    
在 package 中定义 enum 还是安全一点，但这个特性能用到 regex 中吗？

enum 的实质意义就是一个数字，没有办法代表别的东西，而且要映射的话，
不如用散列的映射。Enum 就是让代码更具有可读性：

    > enum Type <num str fun>
    > [fun, &say]

保存的数据结构应当是：

    >(call :name<say> (Arg (Int 1)))

enum 定义了太多的符号，要了解清楚符号表才能做出动作。

