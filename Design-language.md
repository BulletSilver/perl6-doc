# 语言的转换

代码作为一种资产，只有被转换成目标语言，才有价值。

很多种语言，衍生出很多的模块和接口，这些不同语言造就的代码，大部分是不能一起工作的。

能够让不同语言在一起工作的机制，能够创造出巨大的价值。

## 解析规则的设计

使用 Grammar 设计解析语言的规则，将一门语言的代码解析成数据结构。

    grammar lisp-grammar {
        rule TOP { }
    }
    class lisp-actions {
        # if method have regex, then $/ would be overload
        method TOP ($match) { ... }
    }
    

## 将数据结构转换成语法树

    say 'something' if True;
    => (if True (say 'something'))
