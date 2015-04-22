## 判断语句

    if $perlcent > 100 {
        say "weird mathematics";
    }
    
    for 1..3 {
        # 使用默认的 $_ 作为循环变量
        say 2 * $_;
    }

    for 1..3 -> $x {
        # 使用指定的循环变量
        say 2 * $x;
    }

    while $stuff.is_wrong {
        $stuff.try_to_make_right;
    }

    die "Access denied" unless $password eq "Secret";

## given/when 条件判断

given/when 会从上到下遍历条件，如果遇到符合条件的语句，就会结束条件判断，否则就会执行 `default` 语句后的代码。

    given 1 {
        when 1 { say 'this is first' }
        when 1 { say 'this is second' }
        default { say 'this is default' }
    }
    #=> this is first

## 分支

    my $sheep = 43;
    if $sheep == 0 {
        say "How boring";
    } elsif $sheep == 1 {
        say "One lonely sheep";
    }   else {
        say "A herd, how lovely";
    }

Perl6 的大括号比 Ruby 的 end 更加简洁，也可以少打很多字母。
大括号的缩进功能也比 Python 手动缩进来的简单。

    say "you won" if $answer == 42;

## 循环

    for 0..5 -> $even, $odd {
        say "Even: $even \t Odd: $odd";
    }

    my %h = a => 1, b => 2, c => 3;
    # my %h = { :a<1>, :b<2>, :c<3> };
    # my %h = { a => 1, b => 2, c => 3 };
    for %h.kv -> $key, $value {
        say "$key: $value";
    }

    loop (my $x = 2; $x < 100; $x = $x**2) {
        say $x;
    }
