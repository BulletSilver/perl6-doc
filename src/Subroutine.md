 ## 5. 函数的设计

### 函数可以没有参数

    sub func-no-arg {
      say "this is no args subroutine";
    }
  
    func-no-arg;
    or
    func-no-arg();

大部分情况下是需要参数的，有点像 Javascript:

    sub func-with-arg ($arg1, $arg2) {
      return ($arg1 + $arg2);
    }

参数可以设置默认的值

   sub func-with-default-value ($arg1, $arg2=10) {
     return ($arg1 + $arg2);
   }

函数的参数可以支持命名：

    sub doit(:$when, :$what) {
        say "doing $what at $when";
    }

    doit(what => 'stuff', when => 'once');
    or doit(:when<noon>, :what('more stuff'));

## 函数的参数调用默认是传递引用，并对这个引用进行只读保护

    > sub try-to-reset($bar) { $bar = 2 }
    sub try-to-reset (Any $bar) { #`(Sub|66456416) ... }
    > my $x = 10;
    10
    > try-to-reset($x)
    Cannot assign to a readonly variable or a value

也可以取消引用的只读保护，当然也可以传值。
    
    > sub reset ($bar is rw) { $bar = 0 }
    sub reset (Any $bar is rw) { #`(Sub|66456520) ... }
    > reset($x)
    0
    > $x
    0
    > $x = 10
    10
    > sub quox ($bar is copy) { $bar = 3 }
    sub quox (Any $bar is copy) { #`(Sub|66456624) ... }
    > quox($x)
    3
    > $x
    10

函数的参数可以设置成可选的，只需要在这个参数后放置一个问号：

    > sub foo($x, $y?) { if $y.defined { say "second parameter was supplied" } }
    sub foo (Any $x, Any $y?) { #`(Sub|66456728) ... }
    > foo(1)
    > foo(1,2)
    second parameter was supplied

函数的设计可以支持多种参数组合, 就好像真正的函数式语言：

   multi sub frob(Str $s) { say "Frobbing string $s" }
   multi sub frob(Int $i) { say "Frobbing Integer $i" }

函数的参数当中如果有列表，并不会打乱参数的顺序，也不会占用多余的参数：

    sub a($scalar1, @list, $scalar2) {
        say $scalar2;
    }

    my @list = "foo", "bar";
    a(1, @list, 2);  # 2

如果参数保存在一个数组中，那么就用下面的方式，将参数传递到函数中：

    sub b($x, $y, $z) { say "$x $y $z" }
    my @list = (1,2,3);
    b(|@list); # 1 2 3

