# 语法

Grammar 由 regex(token,rule) 组成，当然也可以有 method, 但通常都会用 Actions 分离：

regex 可以定义有效区域，前置 my 或者 our 等变量限制关键字：

    my regex number { \d+ [ \. \d+ ]? }

token, rule 都是禁止回溯的正则表达式，rule 中的空格代表任意空格 <.ws>：

    my token non-space-y { once upon a time }
    my rule space-y { once upon a time }

通常的语法设计都是这样的：

    use v6;

    grammar test-grammar {
        token TOP { ^ \d+ $ }
    }

    class test-actions {
        method TOP($/) {
            $/.make(2 + ~$/);
        }
    }

    my $actions = test-actions.new;
    my $match = test-grammar.parse('40', :$actions);
    say $match; #=> ｢40｣
    say $match.made; #=> 42

通常使用的方法：

    MyGrammar.parse($string, :actions($action-object))
    MyGrammar.parsefile($filename, :actions($action-object))

Grammar 可以继承：

     grammar Letter {
         rule text     { <greet> $<body>=<line>+? <close> }
         rule greet    { [Hi|Hey|Yo] $<to>=\S+? ',' }
         rule close    { Later dude ',' $<from>=.+ }
         token line    { \N* \n}
     }

     grammar FormalLetter is Letter {
         rule greet { Dear $<to>=\S+? ',' }
         rule close { Yours sincerely ',' $<from>=.+ }
     }
