# Junctions

Junctions 意思是`它们之中的任意一个`, 这种说法在自然语言中频繁出现. Junctions 不是一种真正的数据类型，而是一种语法缩写，它可以简化编程模型, 而且很容易对其并行优化：

    'a'|'b'|'c'
    1|2|3

表示 Junctions 是用分隔符 `|` 来分割若干个值, 每一个值的位置是重合的而且没有什么顺序，所有针对 Junctions 的操作将分别作用于每一个值，并将返回值保存为另外一个 Junctions：

    my $x = 4;
    if $x == 3|4 {
        say '$x is either 3 or 4'
    }
    say ((2|3|4)+7).perl #=> (9|10|11) 


我们可以将数组转换成 Junctions:

    my Junction $weekday = any <Monday Tuesday Wednesday 
                                Thursday Friday Saturday Sunday>
    if $day eq $weekday {
        say "See you on $day";
    }

当然可以设计使用 Junctions 作为参数的函数：

    sub dump-yaml(Junction $stuff) {
        # we hope that YAML can represent junctions ;-)
        ....
    }

Junctions 是一种从语法缩写进化来的抽象数据类型，不能像普通的集合那样遍历和取值，这是新手经常犯得错误。
