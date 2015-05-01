## 散列

Perl6 的 Hash 是由 pair 组成的无序集合:

Pair 是由 Enum 继承来的：

    > say :a<1>.WHAT
    (Pair)

Pair 是 Perl6 最基本的数据类型，经常用于函数的参数，也是 Hash 的组成单位：

    > (a => 1).key
    a
    > (a => 1).value
    1
    > (a => 1).invert
    1 => a

Pair 组成的 List 可以作为 Lisp 的链表来使用：
PairMap 就是有序的 Hash，不过 key 是不可更改的，只有值可以修改。
 
    > my %h = { a => 'b', c => 'd' }
    a => b, c => d
    > %h.perl
    ("c" => "d", "a" => "b").hash
    > if %h<a>:exists { say "%h has key a" }
    %h has key a
    > %h.keys.perl
    ("a", "c").list
    > %h.values.perl
    ("b", "d").list
    > %h.pairs.perl
    ("a" => "b", "c" => "d").list
    > %h.pairs
    a => b c => d
    > %h.hash
    a => b, c => d
    > %h.hash.perl
    ("c" => "d", "a" => "b").hash
    > (a => 'b', a => 'c').list
    a => b a => c

key 相同的 Pair 会自动合并，保留最后一个：

    > (a => 'b', a => 'c').hash
    a => c

invert 反转每一个 Pair 的 key 和 value:

    > %h.invert
    b => a d => c

    > %h.kv
    a b c d
    > %h.kv.perl
    ("a", "b", "c", "d").list

（未完）
