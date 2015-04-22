# 类和对象

面向对象编程是一种组织数据及其相应行为的形式。不同的数据结构和不同的行为是联系在一起的。
数据结构也是一种数据，Perl 6 可以将数据结构进行对比，也就是说可以测试某种数据结构的名称。

    class Class-name {}  # 定义一个叫 Class-name 的类

每一个被创建的类，都有一个默认的 `new` 方法用来创建实例：

    my $object = Class-name.new;

定义类的属性称为 `slot`:

    class Class-name { 
        has $!privatetuff; # 定义一个 private 属性
        has $.public; # 定义一个 public 属性
    } 

定义一个 public 属性的同时，会自动创建一个关于这个属性的 `accessor method`：

    my $object = Class-name.new;
    say $object.public;

如果属性定义的时候 `is rw`, 那么这个属性就是可以修改( is read-writable )的：

    class Thingy { has $.slot-name is rw; }
    my $object = Thingy.new;
    $object.slot-name = 4;

类中定义的叫方法用 `method`:

    class Thingy {
        method-name {}
    }

调用这个方法:

    my $object = Thingy.new;
    $object.method-name();

如果定义不能继承的类方法，用 `submethod`.

在类定义中，类方法默认的第一个参数总是类实例：

    class Thingy {
        method (self) { say self.perl }
    }

当然你也可以给 `self` 其他的名字，不过在定义时，要把这个名字放在第一位，并且后面要放个冒号 `:`:

    class Thingy {
        method my-method($invocant: $x, $y) {}
    }

事实上 Perl 6 所有的内置类型都是类，而且都有一些相同的方法 `perl`：

    my Int $x = 5;
    $x.perl.say; #=>5

    my @y = (1,2,3);
    @y.perl.say; #=> "[1,2,3]"

    my %z = {:first(1), :second(2)}
    %z.perl.say; #> "{:first(1), :second(2)}"
    
## 默认的类方法
   
除了 `perl` 之外, Perl 6 内置的类型还有一些约定的方法：

    .item   # 返回对象的 item
    .iterator # 返回对象的迭代器形式
    .hash   # 返回对象的哈希形式
    .list   # 返回对象的列表形式
    .Bool   # 返回对象的逻辑值
    .Array  # 返回一个保存对象数据的数组
    .Hash   # 返回一个保存对象数据的哈希
    .Scalar # 返回对象的标量形式
    .Str    # 返回对象的字符串形式

## 类自省方法

    .WHENCE # 返回对象的代码表达式
    .WHERE  # 返回对象的内存位置
    .WHICH  # 返回对象的的唯一标识
    .HOW    # 返回对象 meta class
    .WHAT   # 返回对象的类名称
 
（完）
