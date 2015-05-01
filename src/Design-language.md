# 语言转换

不同的语言之间有许多重叠的领域：相同的算法，不同的接口，重复的轮子一个接一个的被制造出来。

有些语言的表达能力很强，能够快速建立原型，但运行速度很慢。如果要部署，就需要用另外的语言重写，因为在大规模服务器上的代码，只是很小的速度的提升都会产生巨大的经济效益。

但人力同样是一种资产，而且越来越贵。开发效率低下的语言造成的人力成本，已经不可忽视了。

在速度相近的情况下，开发效率高的语言显然更有优势。

而不同语言的代码，只有被转换成目标语言，才有价值。

很多种语言，衍生出很多的模块和接口，这些不同语言造就的代码，大部分是不能一起工作的。

能够让不同语言在一起工作的机制，能够创造出巨大的价值。

语言转换，让两种语言协同工作成为现实。

对语言进行转换，通常需要三步：

## 1. 设计语言的解析规则

使用 Grammar 来描述语言的语法, 因为语言的语法相对来说比较稳定, 
即使很大的升级, 对语言的语法来说，变动也很小。所以将一门语言的
语法用一种语言描述出来，成为解析语言的规则，是解析语言的第一步：

Perl 6 的 grammar 就是描述语言语法的专用语言，通过 grammar 可以将一门语言的代码解析成数据结构。

    grammar lisp-grammar {
        rule TOP { ... }
    }
    
还需要设计相应的 action 类，来解析对应的数据结构，进行简单的变换。
经过简单变换的数据结构，应当是 good parts 部分，将各种变形的语法
结构，转换成统一的结构。

## 2. 将通过 grammar 解析出的数据结构转换成语法树：

通常的语言转换项目，只是针对特定的语言进行设计，例如 Coffee Script, 
很少有项目为了转换一种语言，而去设计一门通用的语法树的描述语言。

Haskell 语言有一个项目 Pandoc，定义了一种通用的描述标记语言的数据结构，
然后分别设计了不同的几种标记语言的转换和书写程序，完成了这些标记语言任意
之间的转换能力。

所以，要设计真正的语言转换项目，必须要定义一门通用的语法树的描述语言。
这门语言必须包括绝大多数语言中的语法特点。成为所有目标语言的交集语言。

    #!perl6
    use JSON::Tiny;

    my $str = 'abcdefghij';
    grammar my-grammar {
        token TOP { ^ (..) (..)**2 (..)+ $ }
    }

    my $match = my-grammar.parse($str);
    say to-json get-match-ast($match) if $match.Bool;
    #=> [ "ab", [ "cd", "ef" ], [ "gh", "ij" ] ]

    sub get-match-ast($match) {
        return $match.Str if has-blank-list($match);
        my @ast;
        for $match.kv -> $key, $value {
            push @ast, get-match-ast($value) if $key ~~ Int;
        }
        return [ @ast ] if $match.list ~~ Array;
        return @ast if $match.list ~~ List;
    }

    sub has-blank-list($match) { 
       $match.list.perl eq '().list' ??
       Bool::True !! Bool::False;
    }

## 3. 将语法树扩展成目标语言

低级语言转换成高级语言，用正则匹配，而高级语言编译成低级语言，则需要宏。

    say 'something' if True;
    => (if True (say 'something'))

## 4. 变换数据结构

当代码转换成内部的数据结构后，语言的转换就到了后台。

数据被放到了一个一个的箱子里，被贴上标签。有的贴的多，有的贴的少。

语言转换不是解释器，不对数据进行运算，只对语法结构进行转换。

    (Sub say) (Str 'something') (Condition-keyword if) (Expression True))

这个似乎太复杂了，但如果不标记数据类型，那么如何确定数据类型呢？

能否单独保存这个关键字呢？

    > (Sub &say)
    #=> error

REPL 是解释器，要对所有的东西进行解释，能否有中间保存的呢？

    > (Sub 'say')
    #=> error

github 又出问题了，看样为了速度起见，还是放在 oschina 上比较好。



(完)
