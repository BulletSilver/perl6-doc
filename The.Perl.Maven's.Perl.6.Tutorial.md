The Perl Maven's Perl 6 Tutorial

1. Introduction to Perl 6
  1.1 Getting started
  1.2 Other resources
  1.3 Installing Rakudo Perl 6
  1.4 Development Environment
  1.5 Running Rakudo
  1.6 Hello World
  1.7 Comments
  1.8 POD - Plain Old Documentation

2. First steps in Perl 6
  2.1 Hello World - scalar variables
  2.2 Hello World - interpolation
  2.3 Reading from the keyboard
  2.4 Numerical operations
  2.5 Automatically convert string to number
  2.6 String operators
  2.7 String concatenation
  2.8 String repetition
  2.9 if statement - comparing values
  2.10 Ternary Operator
  2.11 Comparison Operators
  2.12 Boolean expressions (logical operators)
  2.13 Chained comparisons
  2.14 Comparing values - Calculator
  2.15 Calculator - given
  2.16 String functions: index
  2.17 String functions: substr
  2.18 Super-or (junctions)

3. Files in Perl 6
  3.1 exit
  3.2 warn
  3.3 die
  3.4 Twigils and special variables
  3.5 Read line from file
  3.6 Read all the lines with get
  3.7 Process a file line by line
  3.8 Write to a file
  3.9 Open file modes
  3.10 slurp
  3.11 Read lines into array
  3.12 Exercise: Print sum of numbers
  3.13 Solution: Print sum of numbers

4. Perl 6 Lists and Arrays
  4.1 List Literals, list ranges
  4.2 List Assignment
  4.3 Swap two values
  4.4 Loop over elements of list with for
  4.5 Create array, go over elements
  4.6 Array elements (create menu)
  4.7 Array assignment
  4.8 Command line options
  4.9 Process CSV file
  4.10 join
  4.11 The uniq functions
  4.12 Looping over a list of values one at a time, two at a time and more
  4.13 Looping over any number of elements
  4.14 Missing values
  4.15 Iterating over more than one array in parallel
  4.16 Z as in zip
  4.17 xx - string multiplicator
  4.18 sort values
  4.19 Transform arrays and lists using map

5. Meta Operators
  5.1 What are the meta operators
  5.2 Assignment Operators
  5.3 Method invocation in assignment
  5.4 Calling a function during assignment
  5.5 Negated Relation Operators
  5.6 Reversed operators
  5.7 Hyper Operators
  5.8 Reduction operators
  5.9 Reduction Triangle operators
  5.10 Cross operators

6. Perl 6 Hashes
  6.1 Hashes (Associative Arrays)
  6.2 Fetching data from a hash
  6.3 Multidimensional hashes
  6.4 Count words
  6.5 Overview of hashes
  6.6 slurp hash
  6.7 kv
  6.8 Looping over keys of a hash

7. Subroutines
  7.1 Subroutines in Perl 6
  7.2 Simple definition with required parameters
  7.3 Subroutine with arbitrary number of parameters
  7.4 Passing arrays and hashes
  7.5 Multiple signatures
  7.6 Optional parameters
  7.7 Named only parameters
  7.8 No parameter definition - perl 5 style
  7.9 Fibonacci
  7.10 Creating Operators
  7.11 Create your own operator

8. Perl 6 Regexes
  8.1 Regexes in Perl 6
  8.2 Match digit
  8.3 Match Any character
  8.4 Escape characters
  8.5 Spaces in regex
  8.6 End of string anchors
  8.7 Ranges
  8.8 Regex Arithmetic
  8.9 Regex Quantifier
  8.10 Quantifier 2
  8.11 Match several words
  8.12 Alternates
  8.13 Match object
  8.14 Capture
  8.15 Named Regex
  8.16 Capture with quantifier
  8.17 Reuse capture
  8.18 Word boundary
  8.19 Rules
  8.20 Tokens
  8.21 Replace
  8.22 Grammar
  8.23 Grammar with error handling
  8.24 Grammar that is easier to extend
  8.25 Grammar subclass

9. Junctions in Perl 6
  9.1 Junctions
  9.2 More tutorial with Junctions

10. Modules in Perl 6
  10.1 Exporting subs from modules

11. Object Oriented Perl 6
  11.1 Simple Point class
  11.2 Read/write attributes and accessors
  11.3 Class Methods
  11.4 Private Attributes
  11.5 Method with parameters
  11.6 Inheritence of classes
  11.7 Classes in Perl 6

12. Testing in Perl 6
  12.1 skip a test

13. Perl 5 to Perl 6
  13.1 Intro
  13.2 Hello World
  13.3 Scalars
  13.4 Arrays
  13.5 Hashes
  13.6 Control Structures
  13.7 Functions
  13.8 Files
  13.9 Modules, Classes
  13.10 Perl 5 to Perl 6

14. Shell to Perl 6
  14.1 Intro
  14.2 Running external command from Perl 6 (shell, QX)
  14.3 Unix commands in Perl 6
  14.4 awk
  14.5 cat
  14.6 cd in Perl 6

15. Appendix
  15.1 grok and App::Grok
  15.2 Using 3rd party Perl 6 modules
  15.3 Timestamp and elapsed time in Perl 6
  15.4 Thanks

## 1. Introduction to Perl 6

### 1.1 Getting started

Perl 6 is a specification and a set of tests. Any compiler that passes all the tests is considered to be a valid Perl 6 compiler. There are several compilers for Perl 6. As of today, they are all partial and implement only a subset of the language.

- Rakudo

can run on any one of the following back-ends: MoarVM, the Parrot Virtual Machine, JVM. It is currently the most promising implementation.

- Niecza

is a compiler targetting the Common Language Runtime (.NET and Mono).

Perlito can be tried online as it can compile some Perl 6 code to Javascript and run in a browser.

- Pugs

written in Haskell was the first usable implementation, but it is currently only minimally maintained.

We are going to use Rakudo with MoarVM.

### 1.2 Other resources

There are lots of free resources for learning Perl 6. Probably the most central place is the [Perl 6 community site](http://www.perl6.org/), that has lot of other links.

[Perl 6 documentation](http://doc.perl6.org/) evolving quickly.

[The Perl 6 tutorial blogs](http://perlgeek.de/blog-en/perl-5-to-6/) by Moritz Lenz.

The most active place to ask about Perl 6 is the #perl6 IRC channel.

If you prefer mailing list then I'd recommend the perl6-users mailing list. Send an empty e-mail to perl6-users-subscribe@perl.org and follow the instructions. Also check out the archive of the Perl 6 users mailing list.

[Learn X in Y minutes Where X=perl6](http://learnxinyminutes.com/docs/perl6/)

The Rakudo Star distribution that we are going to use also includes a draft version of the *Using Perl 6* book in the *docs/* folder. Check it out.

### 1.3 Installing Rakudo Perl 6

Unless you want to actually develop Rakudo itself, the recommendation is to install the Rakudo Star package. It contains the Rakudo compiler, documentation, and some extra modules. It can automatically build MoarVM, so you don't need to worry about that.

Windows users are even more spoiled, as the Rakudo development team provides ready-made binaries of Rakudo Star in msi format.

## Linux / OSX

Visit the download page to find the latest .tar.gz file.

    $ wget http://rakudo.org/downloads/star/rakudo-star-2014.12.1.tar.gz
    $ tar xzf rakudo-star-2014.12.1.tar.gz
    $ cd rakudo-star-2014.12.1
    $ perl Configure.pl --backend=moar --gen-moar
    $ make
    $ make rakudo-test
    $ make rakudo-spectest

This will install the perl6 executable in the install/bin subdirectory of the

## Windows

Visit the download page to find the latest .msi file.

You can also build Rakudo from source using Visual Studio 2013 Commmunity Edition.

For up-to-date instructions, please visit the Rakudo web site.

### 1.4 Development Environment

Any text editor.

[Padre, the Perl IDE](http://padre.perlide.org/) has some Perl 6 support.

vim with syntax highlighting using [vim-perl](http://github.com/hinrik/vim-perl)

emacs with perl6 mode using utils/cperl-mode.el from the Pugs repository.

### 1.5 Running Rakudo

Version information: /path/to/somedir/rakudo/perl6 -v

I added `/path/to/somedir/rakudo/` to the PATH variable so I can also type: `perl6 -v` which gave me:

    This is perl6 version 2014.12 built on MoarVM version 2014.12

One-liner:

    perl6 -e "say 42"

Help:

    perl6 -h

Interactive Perl 6 console

    $ perl6

### 1.6 Hello World

One usually starts by saying something to the audience. We do this using the say keyword. Not only does it print to the screen, it also adds a newline at the end of the string. As you can see strings are marked by double-quotes " at both their ends. The statements in Perl 6 end with semi-colon ;

    #!/usr/bin/env perl6
    use v6;

    say "Hello Perl 6 World";

The same can be written in Object Oriented style:

    #!/usr/bin/env perl6
    use v6;

    "Hello again Perl 6 World".say;

You could run either of these by typing perl6 hello_world.p6 or perl6 hello_world_oop.p6 respectively.

Actually you don't even need all the 3 lines, this example would also work if you ran it by writing perl6 `hello_world_bare.p6`.

    say "Hello Perl 6 World";

### sh-bang - only for Unix/Linux

The first line in the first example is called the *she-bang* or *sh-bang*. In general it is not necessary, but if you would like to let the users run your Perl 6 code without explicitely typing in perl6 before the name of the script, then you need this line. At least on Unix/Linux systems. It tells the Unix/Linux shell you are using to look for the first executable called "perl6" in your `PATH` and run the script using that interpreter. In addition to the sh-bang line, you will also have to set the executable bit on the file. You do that by typing `chmod u+x hello_world.p6`. Once you have both, you can run your script as `./hello_world.p6`. If the directory where the script is located is listed in the `PATH` environment variable, then you can even run it as *hello_world.p6*.

### The file extension

I used the file extension p6 to indicate this is a Perl 6 script though it is not necessary. Some people just use the regular pl extension. Actually the extension does not matter on Unix systems. It only matters as some editors base their syntax highlighting on the extension of the file.

    use v6;

This line tells perl that the following code requires Perl 6 or higher. The code will run correctly without this, if you run it with perl6. What happens if someone tries to run your script by mistake using perl 5?

So what happens if someone runs the code with the `use v6`; in it using perl 5? perl hello_world.p6 The output looks like this:

    Perl v6.0.0 required--this is only v5.20.1, stopped at
    books/examples/intro/hello_world.p6 line 2.
    BEGIN failed--compilation aborted at
    books/examples/intro/hello_world.p6 line 2.

Now the problem is much clearer. (Though it would be nice if the error message printed by perl 5 was something like: This code requires Perl v6.0.0. You ran it using v5.20.1.

### 1.7 Comments

    #!/usr/bin/env perl6
    use v6;

    say "Hello";

    # This is a single line comment

    say #`< embedded comments > "hello world";

    #`{{
    This is a
    multiline
    comment
    It starts by a # followed by back-tick, an opening braces
    and end with the bracket pair
    }}

    #`<<<
    but it has a bug now
    that it cannot start on the first character of a line
    >>>

See also Multiline Comments and Embedded Comments in the Synopsis.

### 1.8 POD - Plain Old Documentation

    #!/usr/bin/env perl6
    use v6;

    print "Hello";

    =begin pod

    =head1 Title

    text

    =end pod

    say " World";

See also the Synopsis 26 that describes the Perl 6 pods.

## 2. First steps in Perl 6

### 2.1 Hello World - scalar variables

The print() is the same as in Perl 5 but there is a shorter way using say(). That will probably be more common in the future as it also appends a newline at the end of the values it prints. (Actually Perl 5.10 already has this feature)

    use v6;

    # Perl 5: print
    # Perl 5.10: say

    # Perl 6: print still works and there is say()
    # just like in 5.10 adding a newline automatically

    print "Hello World\n";
    say "Hello World";

### 2.2 Hello World - interpolation

We can put scalar variables within regular strings. Their value will be interpolated into the string.

    #!/usr/bin/env perl6
    use v6;

    my $name     = "Foo";
    my $greeting = "Hello $name";
    say $greeting;

prints

    Hello Foo

### 2.3 Reading from the keyboard

When prompting the user with a question it is probably the best to use the `prompt` function. Similarly to say it prints to the screen, but without the newline at the end. Then it waits for the user to type in something.

It reads up to the ENTER the user presses, but passes over only the the part before the newline. (Perl 5 users could think about it as having autochomp)

Ask the user what's her name:

    #!/usr/bin/env perl6
    use v6;

    my $name = prompt("Please type in yourname: ");
    say "Hello $name";

### 2.4 Numerical operations

Numerical operator can be used on the scalar values.

    #!/usr/bin/env perl6
    use v6;

    my $x = 3;
    my $y = 11;

    my $z = $x + $y;
    say $z;            # 14

    $z = $x * $y;
    say $z;            # 33
    say $y / $x;       # 3.66666666666667

    $z = $y % $x;      # (modulus)
    say $z;            # 2

    $z += 14;          # is the same as   $z = $z + 14;
    say $z;            # 16

    $z++;              # is the same as   $z = $z + 1;
    $z--;              # is the same as   $z = $z - 1;

    $z = 23 ** 2;      # exponentiation
    say $z;            # 529

### 2.5 Automatically convert string to number

As we can see - in this case - Perl 6 does not care that you typed in a string, the numeric + adds together the two numbers.

    #!/usr/bin/env perl6
    use v6;

    my $a = prompt "First number:";
    my $b = prompt "Second number:";

    my $c = $a + $b;

    say "\nResult: $c";

### 2.6 String operators

`~` concatenates two strings.

    use v6;

    my $x = "Hello";
    my $y = "World";

`~` is the concatenation operator, attaching one string after the other

    my $z = $x ~ " " ~ $y;  # the same as "$x $y"
    say $z;                 # Hello World

    my $w = "Take " ~ (2 + 3);
    say $w;                 # Take 5
    say "Take 2 + 3";       # Take 2 + 3
    say "Take {2 + 3}";     # Take 5

    $z ~= "! ";             # the same as  $z = $z ~ "! ";
    say "'$z'";             # 'Hello World! '

### 2.7 String concatenation

    use v6;

    my $a = prompt "First string:";
    my $b = prompt "Second string:";

    my $c = $a ~ $b;

    say "\nResult: $c";

### 2.8 String repetition

    use v6;

    my $z = "Hello World! ";

    # x is the string repetition operator
    my $q = $z x 3;
    say "'$q'";

output:

    Hello World! Hello World! Hello World!

### 2.9 if statement - comparing values

You can compare two values or scalar variables using the if statement and one of the comparison operators.

    use v6;

    my $age = 23;
    if $age > 18 {
        say "You can vote in most countries.";
    }

### 2.10 Ternary Operator

Syntax:

    COND ?? VALUE_IF_TRUE !! VALUE_IF_FALSE

Sample:

    use v6;

    my $age = 42;

    if $age > 18 {
        say "Above 18";
    } else {
        say "Below 18";
    }

    say $age > 18 ?? "Above 18" !! "Below 18";

### 2.11 Comparison Operators

Two sets of relation operators. One is to compare numerically the other is to compare as strings, based on the ASCII table.

    Numeric     String (ASCII)     Meaning
        ==        eq                equal
        !=        ne                not equal
        <         lt                less than
        >         gt                greater than
        <=        le                less than or equal
        >=        ge                greater then or equal

See also S03-operators.pod

    3 == 4               # false
    '35' eq 35.0         # false
    '35' == 35.0         # true
    13 > 2               # true
    13 gt 2              # false !!!
    "hello" == "world"   # throws exception
    "hello" eq "world"   # false
    "hello" == ""        # throws exception
    "hello" eq ""        # false

example/scalars/comparison_operators.p6

    #!/usr/bin/env perl6
    use v6;

    say 4      == 4 ?? "TRUE" !! "FALSE";     # TRUE
    say 3      == 4 ?? "TRUE" !! "FALSE";     # FALSE
    say "3.0"  == 3 ?? "TRUE" !! "FALSE";     # TRUE
    say "3.0"  eq 3 ?? "TRUE" !! "FALSE";     # FALSE
    say 13     >  2 ?? "TRUE" !! "FALSE";     # TRUE
    say 13     gt 2 ?? "TRUE" !! "FALSE";     # FALSE
    say "foo"  == "" ?? "TRUE" !! "FALSE";    # TRUE
    say "foo"  eq "" ?? "TRUE" !! "FALSE";    # FALSE
    say "foo"  == "bar" ?? "TRUE" !! "FALSE"; # TRUE
    say "foo"  eq "bar" ?? "TRUE" !! "FALSE"; # FALSE

> Cannot convert string to number: base-10 number must begin with valid digits or '.'

### 2.12 Boolean expressions (logical operators)

   operator  alias shortcut
    and         &&
    or          ||
    orelse      //
    xor         ^^
    not          !

    if COND and COND { }

    if COND or COND { }

    if not COND { }

Sample:

    use v6;

    say (2 and 1);  # 1
    say (1 and 2);  # 2
    say (1 and 0);  # 0
    say (0 and 1);  # 0
    say (0 and 0);  # 0
    say "---";

    say (1 or 0);   # 1
    say (1 or 2);   # 1
    say (0 or 1);   # 1
    say (0 or 0);   # 0
    say "---";

    say (1 // 0);   # 1
    say (0 // 1);   # 0
    say (0 // 0);   # 0
    say "---";

    say (1 xor 0);  # 1
    say (0 xor 1);  # 1
    say (0 xor 0);  # 0
    say (1 xor 1);  # Nil
    say "---";

    say (not 1);    # False
    say (not 0);    # True
    say "---";

### 2.13 Chained comparisons

    use v6;

    my $a = prompt "Type in a number between 23 and 42: ";
    if 23 <= $a and $a <= 42 {
        say "Good, $a is in the range.";
    } else {
        say "Did I say between 23 and 42 ?";
    }

you can also compare like this:

    if 23 <= $a <= 42 {
        say "Good, $a is in the range.";
    } else {
        say "Did I say between 23 and 42 ?";
    }

    my $small = prompt "Type another number between 0 and $a: ";
    my $big = prompt "Type another number between $a and 100: ";

    if 0 <= $small <= $a <= $big <= 100 {
        say "good";
    } else {
        say "something is fishy";
    }

### 2.14 Comparing values - Calculator

    use v6;

    my $a        = prompt "Number:";
    my $operator = prompt "Operator: [+-*/]:";
    my $b        = prompt "Number:";

    if $operator eq "+" {
        say $a + $b;
    } elsif $operator eq "-" {
        say $a - $b;
    } elsif $operator eq "*" {
        say $a * $b;
    } elsif $operator eq "/" {
        say $a / $b;
    } else {
        say "Invalid operator $operator";
    }

### 2.15 Calculator - given

The `given .. when` construct (known in other languages as case or switch) can make the previous example much more compact.

Perl compares the value of $operator (the topic) with each one of the values next to the when keywords. When if finds one that fits the appropriate block is executed and perl jumps to the next command after the given block.

If non of the when values fit the (optional) default block is evaluated.

    use v6;

    my $a        = prompt "Number:";
    my $operator = prompt "Operator: [+-*/]:";
    my $b        = prompt "Number:";

    given $operator {
        when "+" { say $a + $b; }
        when "-" { say $a - $b; }
        when "*" { say $a * $b; }
        when "/" { say $a / $b; }
        default  { say "Invalid operator $operator"; }
    }

### 2.16 String functions index

    #!/usr/bin/env perl6
    use v6;

    my $s = "The black cat jumped from the green tree";

    say index $s, "e";          # 2
    say index $s, "e", 3;       # 18

    say rindex $s, "e";         # 39
    say rindex $s, "e", 38;     # 38
    say rindex $s, "e", 37;     # 33

### 2.17 String functions substr

    use v6;

    my $s = "The black cat climbed the green tree";
    my $z;
    $z = substr $s, 4, 5;     # $z = black
    say $z;
    $z = substr $s, 4, *-11;  # $z = black cat climbed the
    say $z;
    $z = substr $s, 14;       # $z = climbed the green tree
    say $z;
    $z = substr $s, *-4;      # $z = tree
    say $z;
    $z = substr $s, *-4, 2;   # $z = tr
    say $z;

### 2.18 Super-or (junctions)

    use v6;

    say "Please select an option:";
    say "1) one";
    say "2) two";
    say "3) three";
    my $c = prompt('');

    if $c == 1 or $c == 2 or $c == 3 {
        say "correct choice: $c";
    } else {
        say "Incorrect choice: $c";
    }

    if $c == 1|2|3 {
        say "correct choice: $c";
    } else {
        say "Incorrect choice: $c";
    }

## 3. Files in Perl 6

### 3.1 exit

Before starting to deal with files let's look at a couple of function that can help us.

`exit()` allows us to exit the program at any point without the need to run to the last line of the code.

    #!/usr/bin/env perl6
    use v6;

    say "hello";

    exit;

    # You would never see following output:
    say "world";

### 3.2 warn

`warn()` will print a message on standard error (STDERR) and go on running.

    #!/usr/bin/env perl6
    use v6;

    warn "This is a warning";

    say "Hello World";

### 3.3 die

`die()` will print the message on the standard error and stop the execution of the program.

    #!/usr/bin/env perl6
    use v6;

    say "Before calling die";

    die "This will kill the script";

    say "This will not show up";

### 3.4 Twigils and special variables

Perl 6 has a large set of special variables. In order to make it easy to differentiate them from regular variables, they are marked with a second prefix called twigil. Regular, user defined variables have a sigil ($, @ or %) in front of them. System variables have and additional character between the sigil and the name of the variable.

Examples:

- $*PROGRAM_NAME

  relative path to the currently running Perl 6 script.

- $*PROGRAM

  full path to the currently running Perl 6 cript

- $*CWD

  contains a path to the current working directory.

- $*IN

  is the standard input (STDIN). You can read a line using $*IN.get

- @*INC

  search path for modules.

- $*PID

  Process ID

- $EXECUTABLE_NAME

  Relative path to the current binary. Most likely perl6

- $EXECUTABLE

  Full path to perl6

- $*TMPDIR

  temparare dir that would delete after process

You can read more about them in S28

### 3.5 Read line from file

As in other high level languages one has to open a file in order to read from it or to write to it. In Perl 6 it is done by the open() function imported from the IO class. It can receive several parameter but thw two are very important: The name of the file and the mode. In order to open a file for reading the mode need to be :r. The function either returns a file handle that should be placed in a scalar variable or returns undef in case of failure.

    $fh = open $filename, :r

Once we have an open file handler we can use the get method ($fh.get) to read one line from the given file.

One could read many lines using consecutive calls to the get method but there are better ways to do that.

Currently I think Rakudo throws an exception if the file cannot be opened but I think the spec says that it should just return undef.

The specifications of all the IO of Perl 6 can be found in S32-setting-library/IO.pod

    #!/usr/bin/env perl6
    use v6;

    my $filename = $*PROGRAM_NAME;

    my $fh = open $filename;
    my $line = $fh.get;
    say $line;

### 3.6 Read all the lines with get

    #!/usr/bin/env perl6
    use v6;

    my $filename = $*PROGRAM_NAME;

    my $fh = open $filename;
    while (defined my $line = $fh.get) {
        say $line;
    }

### 3.7 Process a file line by line

    #!/usr/bin/env perl6
    use v6;

    my $filename = $*PROGRAM_NAME;

    my $fh = open $filename;
    for $fh.lines -> $line {
        say $line;
    }

The `lines()` method of the file handle can return either all the lines, some of the lines. As it does it lazily in the above code we get an iterator behavior so the file is read line-by-line into the $line variable by the for loop.

This script is very similar to what the unix cat command does.

### 3.8 Write to a file

In order to write to a file first we need to open the file for writing with the :w mode. If this is successful we get back a filehandler on which we can use the regular output methods such as print(), say() or printf().

### 3.9 Open file modes

    :r  - read
    :w  - write
    :a  - append

    open 'filename', :r;  # default
    open 'filename', :w;
    open 'filename', :a;

### 3.10 slurp

Perl 6 has a built in mode to slurp in files, that is to read the contents of a whole file into a scalar variable.

    my $contents = slurp 'filename';

### 3.11 Read lines into array

We have not learned about arrays yet but let me show what happens when we put the result of the slurp() call into an array. all the content of the file ends up in as the first and only element of the array.

If you want to read every line into a separate element of the array you need to use the lines() function.

    #!/usr/bin/env perl6
    use v6;

    my $filename = $*PROGRAM_NAME;

reads all the content of the file in the first element of the array!

    my @content = slurp $filename;
    say @content.elems;

reads all the content of the file, every line an element in the array

    my @rows = lines $filename.IO;
    say @rows.elems;

### 3.12 Exercise Print sum of numbers

Take a file that has one number on every line Print the sum of the numbers.

    3
    8
    19
    -7
    13

The script should print 36.

Improve it to also print average, minimum and maximum.

Can you also think about way to print median and standard deviation?

### 3.13 Solution Print sum of numbers

    #!/usr/bin/env perl6
    use v6;

    my $filename = 'examples/numbers.txt';

    my $total;
    my $count;
    my $min;
    my $max;

    if (my $fh = open $filename, :r) {
    for $fh.lines -> $line {
        if (not $count) {
            $min = $max = $line;
        }
        $total += $line;
        if ($min > $line) {
            $min = $line;
        }
        if ($max < $line) {
            $max = $line;
        }
        $count++;
    }
    my $average = $total / $count;
    say "Total: $total, Count: $count Average: $average Min: $min Max: $max";

There is a minor issue in this solution, what if there are no values at all in the file?

## 4. Perl 6 Lists and Arrays

### 4.1 List Literals, list ranges

Things in () separated by commas are called a list of things. Actually you don't even need the parentheses for the list, it just clarifies precedence. A list is an ordered set of scalar values. Examples of lists:

    #!/usr/bin/env perl6
    use v6;

    # 3 values
    (1, 5.2, "apple");

    # nice but we are too lazy, so we write this:
    (1,2,3,4,5,6,7,8,9,10);
    (1..10);    # same as (1,2,3,4,5,6,7,8,9,10)
    (1..Inf);   # represents the list of all the numbers
    (1..*);     # this too

    ("apple", "banana", "peach", "blueberry");
    # is the same as
    <apple banana peach blueberry>; # quote word

    # We can also use scalar variables as elements of a list
    my ($x, $y, $z);

We actually don't even need the parentheses in most of the cases.

### 4.2 List Assignment

    my ($x, $y, $z);
    ($x, $y, $z) = f();
    # if f() returns (2, 3, 7) then it is nearly the same as
    # $x = 2; $y = 3; $z = 7;

    ($x, $y, $z) = f();
    # if f() returns (2, 3, 7, 9), then ignore 9

    ($x, $y, $z) = f();
    # if f() returns (2, 3);  then $z will be undef

A regular question on job interviews:

How can we swap the values of 2 variables, let say $x and $y?

### 4.3 Swap two values

    #!/usr/bin/env perl6
    use v6;

    say "Type in two values:";
    my $a = $*IN.get;
    my $b = $*IN.get;

    ($a, $b) = ($b, $a);
    say $a;
    say $b;

### 4.4 Loop over elements of list with for

    #!/usr/bin/env perl6
    use v6;

    for "Foo", "Bar", "Baz" -> $name {
        say $name;
    }

    say "---";

    for 1..5 -> $i {
        say $i;
    }

    say "---";

    for 1..Inf -> $i {
        say $i;
        last if $i > 3;
    }

    say "---";

    for 1..* -> $i {
        say $i;
        last if $i > 3;
    }

### 4.5 Create array, go over elements

Arrays start with am at mark @ and the name of the array. You can assign a list of values to the array.

Printing the array as is, shows them with no space between them. One can also put the arry within a string (interpolating) but then it needs to be enclosed in {} curly braces. This will print spaces between the values.

The for loop lets you iterate through the values of the array.

As you can see the parentheses () around the list values are optional.

    #!/usr/bin/env perl6
    use v6;

    my @colors = "Blue", "Yellow", "Brown", "White";
    say @colors;

    say "--------------------------------";
    # just for separation...

    say "@colors";
    # no interpolation!

    say "--------------------------------";
    # just for separation...

    say "{@colors}";

    say "--------------------------------";
    # just for separation...

    say "@colors[]";

    say "--------------------------------";
    # just for separation...

    for @colors -> $color {
        say $color;
    }

Output:

    BlueYellowBrownWhite
    --------------------------------
    Blue Yellow Brown White
    --------------------------------
    Blue
    Yellow
    Brown
    White

### 4.6 Array elements (create menu)

    #!/usr/bin/env perl6
    use v6;

    my @colors = <Blue Yellow Brown White>;

    for 1..@colors.elems -> $i {
        say "$i) @colors[$i-1]";
    }

    my $input = prompt("Please select a number: ");
    say "You selected @colors[$input-1]";

### 4.7 Array assignment

    #!/usr/bin/env perl6
    use v6;

    my $owner = "Moose";
    my @tenants = "Foo", "Bar";
    my @people = ($owner, 'Baz', @tenants);  # the array is flattened:
    say "{@people}";                         # Moose Baz Foo Bar

    my ($x, @y) = (1, 2, 3, 4);
    say $x;                              # $x = 1
    say "{@y}";                          # @y = (2, 3, 4)

### 4.8 Command line options

`@*ARGS` is the array maintained by language that holds the values supplied on the comman line. It does NOT include the nam

    #!/usr/bin/env perl6
    use v6;

    my $color = @*ARGS[0];

    if not $color {
        my @colors = <Blue Yellow Brown White>;

        for 1 .. @colors.elems -> $i {
            say "$i) @colors[$i-1]";
        }

        my $input = prompt "Please select a number: ";
        $color = @colors[$input-1];
    }

    say "You selected $color";

### 4.9 Process CSV file

    $ cat examples/arrays/sample_csv_file.csv
    Foo,Bar,10,home
    Orgo,Morgo,7,away
    Big,Shrek,100,US
    Small,Fiona,9,tower

sample:

    #!/usr/bin/env perl6
    use v6;

    my $file = 'examples/arrays/sample_csv_file.csv';
    if defined @*ARGS[0] {
        $file = @*ARGS[0];
    }

    my $sum = 0;
    my $data = open $file;
    for $data.lines -> $line {
        my @columns = split ",", $line;
        $sum += @columns[2];
    }
    say $sum;

### 4.10 join

    #!/usr/bin/env perl6
    use v6;

    my @fields = <Foo Bar foo@bar.com>;
    my $line = join ";", @fields;
    say $line;     # Foo;Bar;foo@bar.com

### 4.11 The uniq functions

    #!/usr/bin/env perl6
    use v6;

    my @duplicates = 1, 1, 2, 5, 1, 4, 3, 2, 1;
    say @duplicates.perl;
    # prints Array.new(1, 1, 2, 5, 1, 4, 3, 2, 1)

    my @unique = uniq @duplicates;
    say @unique.perl;

    # prints Array.new(1, 2, 5, 4, 3)

    my @chars = <b c a d b a a a b>;
    say @chars.perl;

    # prints Array.new("b", "c", "a", "d", "b", "a", "a", "a", "b")

    my @singles = uniq @chars;
    say @singles.perl;

    # prints Array.new("b", "c", "a", "d")

### 4.12 Looping over a list of values one at a time, two at a time and more

In Perl 6 the standard way to iterate over the elements of a list or an array is by using the "for" statement. A simple version of it looks like this:

    for (1,2,3) -> $x { say $x }

This will print out the three values one under the other.

The loop variable ($x) in the above case is automatically declared in the loop so one does not need to declare it using "my" and it is still not global. It is scoped to the block of the loop.

    #!/usr/bin/env perl6
    use v6;

    my @fellows = <Foo Bar Baz>;
    for @fellows -> $name {
        say $name;
    }

### 4.13 Looping over any number of elements

You can also iterate over any number of elements:

Let's say we just extracted the results of the Spanish Liga football games from the soccer website http://soccernet.espn.go.com/. Those come in groups of 4 values:

    home team, score of home team score of guest team guest team

We can loop over the values using a for statement with 4 scalar variables:

    #!/usr/bin/env perl6
    use v6;

    my @scores = <
    Valencia         1  1     Recreativo_Huelva
    Athletic_Bilbao  2  5     Real_Madrid
    Malaga           2  2     Sevilla_FC
    Sporting_Gijon   3  2     Deportivo_La_Coruna
    Valladolid       1  0     Getafe
    Real_Betis       0  0     Osasuna
    Racing_Santander 5  0     Numancia
    Espanyol         3  3     Mallorca
    Atletico_Madrid  3  2     Villarreal
    Almeria          0  2     Barcelona
    >;

    for @scores -> $home, $home_score, $guest_score, $guest {
        say "$home $guest $home_score : $guest_score";
    }

### 4.14 Missing values

One should ask the question what happens if the list runs out of values in the middle, of a multi-value iteration? That is, what happens to the follow loop?

    #!/usr/bin/env perl6
    use v6;

    for (1, 2, 3, 4, 5) -> $x, $y {
        say "$x $y";
    }
    say 'done';

In this case Rakudo throws an exception when it finds out it does not have enough values for the last iteration. It will look like this, (with a bunch of trace information afterwards).

    1 2
    3 4
    Not enough positional parameters passed; got 1 but expected 2
    in block <anon> at examples/arrays/missing_values.p6:4

In order to avoid the exception we could tell the loop that the second and subsequent values are optional by adding a question mark after the variable:

    #!/usr/bin/env perl6
    use v6;

    for (1, 2, 3, 4, 5) -> $x, $y? {
        say "$x $y";
    }
    say 'done';

This will work but generate the following output:

    1 2
    3 4
    use of uninitialized value of type Mu in string context
    in block <anon> at examples/arrays/missing_values_fixed.p6:5
    5
    done

### 4.15 Iterating over more than one array in parallel

In the next example I'd like to show a totally different case. What if you have two (or more) array you'd like to combine somehow? How can you go over the elements of two arrays in parallel?

    #!/usr/bin/env perl6
    use v6;

    my @chars   = <a b c>;
    my @numbers = <1 2 3>;

    for @chars Z @numbers -> $letter, $number {
        say "$letter $number";
    }

Output:

    a 1
    b 2
    c 3

### 4.16 Z as in zip

The `Z` infix operator version of the zip function allows the parallel use of two lists.

Or that of more:

    #!/usr/bin/env perl6
    use v6;

    my @operator  = <+ - *>;
    my @left      = <1 2 3>;
    my @right     = <7 8 9>;

    for @left Z @operator Z @right -> $a, $o, $b {
        say "$a $o $b";
    }

Output:

    1 + 7
    2 - 8
    3 * 9

### 4.17 xx - string multiplicator

    #!/usr/bin/env perl6
    use v6;

    my @moose = "moose" xx 3;
    say "{@moose}";

output:

    moosemoosemoose

### 4.18 sort values

    #!/usr/bin/env perl6
    use v6;

    my @names = <foo bar moose bu>;
    my @sorted_names = sort @names;
    say @sorted_names.perl;   # ["bar", "bu", "foo", "moose"]

    my @numbers = 23, 17, 4;
    my @sorted_numbers = sort @numbers;
    say @sorted_numbers.perl;   # [4, 17, 23]

    my @sort_names_by_length = sort { $^a.bytes <=> $^b.bytes }, @names;
    say @sort_names_by_length.perl;   # ["bu", "bar", "foo", "moose"]

the same result with one sub (Schwartizian transformation):

    my @sort_1 = sort { $_.bytes }, @names;
    say @sort_1.perl;     # ["bu", "bar", "foo", "moose"]

    my @sort_2 = @names.sort({ $_.bytes });
    say @sort_2.perl;     # ["bu", "bar", "foo", "moose"]

    my @sort_3 = @names.sort: { $_.bytes };
    say @sort_3.perl;     # ["bu", "bar", "foo", "moose"]

    my @words = <moo foo bar moose bu>;
    say @words.sort({ $^a.bytes <=> $^b.bytes}).perl;
    # ["bu", "moo", "foo", "bar", "moose"];

    say @words.sort({ $^a.bytes <=> $^b.bytes or $^a cmp $^b}).perl;
    # ["bu", "bar", "foo", "moo", "moose"];

TODO: should be also:

    say @words.sort({ $^a.bytes <=> $^b.bytes }, {$^a cmp $^b}).perl;
    # ["bu", "bar", "foo", "moo", "moose"];
    say @words.sort({ $_.bytes },  {$^a cmp $^b}).perl;
    # ["bu", "bar", "foo", "moo", "moose"];

### 4.19 Transform arrays and lists using map

### map as a function

In the first example we created an array of 3 numbers and then used the map function to create a new array that will contain the duplicate of each original value. The variable $_ contains the current element of the array. Effectively, map is a loop that iterates over the array on the right hand side, assigns each element to $_ variable, executes the code in the block, and collects the results. The collected list is assigned to the array on the left hand side of the = assignment.

In the second example, instead of using $_, the default variable name, we another variable type that is auto-generated. We could have used any variable name there. The caret ^ after the $-sign told perl that this is an autogenerated variable. This has exactly the same job as $_ but if you select a good name will make your code much more readable.

The perl method helps us to dump the content of the array.

Finally we printed the original array showing that it has not changed.

    use v6;

    my @numbers = 2, 5, 7;
    say @numbers.perl;    # Array.new(2, 5, 7)

    my @d = map { $_ * 2 }, @numbers;
    say @d.perl;          # Array.new(4, 10, 14)

    my @x = map { $^number * 2 }, @numbers;
    say @x.perl;          # Array.new(4, 10, 14)

### map as a method

The same functionality is available as a method as well.

In this example we created the same array and then called the map method on it. In the first call we used the arrow operator to create an internal variable. Much like it is done in regular for-loops. Then, just as in a for-loop a block follows with the actual expression.

In the second expression the first * is the Whatever operator, which is anothe placeholder of the "current value". I think this version is not very readable so I'd not recommend it.

sample:

    use v6;

    my @numbers = 2, 5, 7;
    say @numbers.perl;    # Array.new(2, 5, 7)

    my @d = @numbers.map( -> $x {$x * 2 } );
    say @d.perl;      # Array.new(4, 10, 14)

    my @b = @numbers.map( * * 2 );
    say @b.perl;     # Array.new(4, 10, 14)

    say @numbers.perl;    # Array.new(2, 5, 7)

## 5. Meta Operators

### 5.1 What are the meta operators

There are 6 types of Meta-operators that each enhance the behavior of the regular operators. Some of these operators can also be found in Perl 5 and in other languages. Others are more special to Perl 6.

- Assignment Operators

- Negated Relation Operators

- Reversed operators

- Hyper operators

- Reduction operators

- Cross operators

### 5.2 Assignment Operators

We are used to the shortcut opertators from many languages. They change the value that would have not been changed by merely participating in an operation.

    #!/usr/bin/env perl6
    use v6;

    my $num = 23;
    say $num + 19;     # 42
    say $num;          # 23

    $num += 19;
    say $num;          # 42

### 5.3 Method invocation in assignment

In Perl 6 it extends to the . operator that allows the call of methods on objects. Consider the following example. The subst method can substitude one substring by another one but instead of changing the original string, by default it returns the changed string.

If you'd like to change the original string you can write $str = $str.subst('B', 'X'); or you can write its shortcut version.

    #!/usr/bin/env perl6
    use v6;

    my $str = 'ABBA';
    say $str.subst('B', 'X');    # AXBA
    say $str;                    # ABBA

    say $str .= subst('B', 'X'); # AXBA
    say $str;                    # AXBA

### 5.4 Calling a function during assignment

The same can be used with functions so instead of writing my $lower = min($lower, $new_value); you can write $lower min= $new_value;

    #!/usr/bin/env perl6
    use v6;

    my $lower = 2;
    $lower min= 3;
    say $lower;         # 2

    $lower min= 1;
    say $lower;         # 1

This should even work with the comma operator effectively pusing more values on an array but it is not yet implemented in Rakudo

    my @a = (1, 2, 3);
    @a ,= 4;
    @a.say; # 1 2 3 4

### 5.5 Negated Relation Operators

The equality operators in Perl 6 are == for comparing numerical values and eq for comparing strings. The negated version are the same just with an exclamation mark ( ! ) in front of them. So the would look like !== and !eq.

Luckily those both have their own Short-cut version that are spelled != and ne as one, at least with Perl 5 background, would expect.

Other operators too have negated versions so you can write !>= which means not greate than (for numbers) and you can write !gt which is the same for strings. I am not fully sold why do we need thes.

One advantage I can see is that if you create an operator called I then you will automatically get one that looks like !I which would be its negation.

    #!/usr/bin/env perl6
    use v6;

    # Equality
    say 1 ==  1 ?? 'y' !! 'n'; # y
    say 1 !== 1 ?? 'y' !! 'n'; # n
    say 1 !=  1 ?? 'y' !! 'n'; # n

    say 'ac' eq  'dc' ?? 'y' !! 'n'; #n
    say 'ac' !eq 'dc' ?? 'y' !! 'n'; #y

    say 1 <  2  ?? 'y' !! 'n'; # y
    say 1 !< 2  ?? 'y' !! 'n'; # n

    say 1 <=  2  ?? 'y' !! 'n'; # y
    say 1 !<= 2  ?? 'y' !! 'n'; # n

    say 1 >=  2  ?? 'y' !! 'n'; # n
    say 1 !>= 2  ?? 'y' !! 'n'; # y

### 5.6 Reversed operators

Reversed operators will reverse the meaning of the two operands. So instead of switching the two arguments as in `$b cmp $a` one can write `$a Rcmp $b`.

It is not yet implemented in Rakudo and frankly I don't yet see any use of it but I am sure others will.

I wonder if the same would also work on operators such as `gt` ? Could I use `$x Rgt $y` meaning `$y gt $x` ? Why is that good?

    #!/usr/bin/env perl6
    use v6;

    # spaceship operator
    say 1 <=> 2;  # -1
    say 2 <=> 1;  # 1

    say 1 R<=> 2;  # 1
    say 2 R<=> 1;  # -1

Output

    Increase
    Decrease
    Decrease
    Increase

### 5.7 Hyper Operators

Hyper operators are really interesting. They allow the extrapolation of a scalar operator to operate on a list of scalars.

The real operators are actually unicode characters but using regular doubled angle-brackets also work.

Normally the arrows point inside, towards the operator and there are two lists on the two sides of the operator.

This will apply the regular infix operator to the pairs as taken from the two lists on the two sides and return a list with the same length.

If the list on one side is longer than on the other side perl throws an exception "Non-dwimmy hyperoperator cannot be used on arrays of different sizes or dimensions."

In order to make the operator dwimmy you need to turn the arrows around to point to the operand that should dwim. It can be either or both operands. If an operand is being pointed at (that is if it is supposed to dwim) then in case that operand is too short, perl will automatically use the last value of it repeatadly as long as the other side needs pairs.

You can make both sides dwimmy if you don't know up front which one will be longer and if you want to make them work in both ways.

As a special case if one side is a single scalar and if the arrow points in its direction then that value will be paired with each one of the values from the array on the other side.

    #!/usr/bin/env perl6
    use v6;

    my @x = (1, 2) >>+<< (3, 4);
    say @x.perl;  # [4, 6]

    my @d = (1, 2) >>+<< (3);
    say @d.perl;  # [4, 6]

Non-dwimmy hyperoperator cannot be used  on arrays of different sizes or dimensions.

    my @z = (1, 2, 3, 4) >>+>> (1, 2);
    say @z.perl;      # [2, 4, 5, 6]

    @z = (1, 2, 3, 4) <<+>> (1, 2);
    say @z.perl;      # [2, 4, 5, 6]

    @z = (4) <<+>> (1, 2);
    say @z.perl;      # [5, 6]

    my @y = (1, 2) >>+>> 1;
    say @y.perl;      # [2, 3]

There is a lot more to hyper operators but for now this should be enough.

output:

    Array.new(4, 6)
    Array.new(2, 4, 4, 6)
    Array.new(2, 4, 4, 6)
    Array.new(5, 6)
    Array.new(2, 3)

### 5.8 Reduction operators

    #!/usr/bin/env perl6
    use v6;

    say [+] 1, 2;   # 3
    say [+] 1..10;  # 55

    # factorial
    say [*] 1..5;   # 120

    say [**] 2,2,2; # 16    == 2**2**2

    my @numbers = (2, 4, 3);

    # check if the numbers are in growing order
    say [<] @numbers;      # 0

    say [<] sort @numbers; # 1

Output

    3
    55
    120
    16
    False
    True

### 5.9 Reduction Triangle operators

The `~` in front of the operator is only needed for the stringification of the list to inject spaces between the values when printed.

    #!/usr/bin/env perl6
    use v6;

    say ~[\+] 1..5;  # 1 3 6 10 15
    say ~[\*] 1..5;  # 1 2 6 24 120

Output

    1 3 6 10 15
    1 2 6 24 120

### 5.10 Cross operators

    #!/usr/bin/env perl6
    use v6;

    my @x = (1, 2) X+ (4, 7);
    say @x.perl;        # [5, 8, 6, 9]

    my @y = 1, 2 X+ 4, 7;
    say @y.perl;        # [5, 8, 6, 9]

    my @str = 1, 2 X~ 4, 7;
    say @str.perl;        # ["14", "17", "24", "27"]

    # without any special operator  (is the same what X, should be)
    my @z = 1, 2 X 4, 7;
    say @z.perl;          # [1, 4, 1, 7, 2, 4, 2, 7]

Output

    Array.new(5, 8, 6, 9)
    Array.new(5, 8, 6, 9)
    Array.new("14", "17", "24", "27")
    Array.new(1, 4, 1, 7, 2, 4, 2, 7)

## 6. Perl 6 Hashes

### 6.1 Hashes (Associative Arrays)

A hash (also called associative array) is a set of key,value pairs where the keys are unique strings and the values can have any, err value.

Hashes always start with a % (percentage) sign.

    #!/usr/bin/env perl6
    use v6;

    my %user_a = "fname", "Foo", "lname", "Bar";

    my %user_b =
        "fname" => "Foo",
        "lname" => "Bar",
    ;

    say %user_a{"fname"};
    %user_a{"email"} = "foo@bar.com";
    say %user_a{"email"};

    say %user_b<lname>;

Output:

    Foo
    foo@bar.com
    Bar

### 6.2 Fetching data from a hash

    use v6;

    my %user =
        "fname" => "Foo",
        "lname" => "Bar",
        "email" => "foo@bar.com",
        ;

    for %user.keys.sort -> $key {
        say "$key  %user{$key}";
    }

Output:

    email  foo@bar.com
    fname  Foo
    lname  Bar

### 6.3 Multidimensional hashes

    use v6;

    my %xml;

    %xml<person>[0] = 'Foo';
    %xml<person>[1] = 'Bar';

    say %xml.perl;

Output

    ("person" => ["Foo", "Bar"]).hash

### 6.4 Count words

    #!/usr/bin/env perl6
    use v6;

    my $filename = 'examples/words.txt';

    my %counter;

    my $fh = open $filename;
    for $fh.lines -> $line {
        my @words = split /\s+/, $line;
        for @words -> $word {
            %counter{$word}++;
        }
    }

    for %counter.keys.sort -> $word {
        say "$word {%counter{$word}}";
    }

### 6.5 Overview of hashes

    #!/usr/bin/env perl6
    use v6;

    # creating hashes
    my %h1 = first => '1st', second => '2nd';

    if %h1{'first'}.defined {
        say "the value of 'first' is defined";
    }
    if %h1<second>.defined {
        say "the value of 'second' is defined";
    }

    if %h1.exists('first') {
        say "the key 'first' exists in h2";
    }

    say %h1.exists('third') ?? "third exists" !! "third does not exist";

    say %h1<first>;
    say %h1<second>;

    # TODO hash with fixed keys not implemented yet
    #my %h2{'a', 'b'} = ('A', 'B');
    #say %h2.delete('a');
    #say %h2.delete('a');

Output

    the value of 'first' is defined
    the value of 'second' is defined
    the key 'first' exists in h2
    third does not exist
    1st
    2nd

### 6.6 slurp hash

    #example/phonebook.txt

    Foo,123
    Bar,78
    Baz,12321

sample:

    #!/usr/bin/env perl6
    use v6;

    my $filename = 'examples/phonebook.txt';

    my @lines = lines $filename.IO;
    for @lines -> $line {
        say "L: $line";
    }

    #my %phonebook = map {split ",", $_}, @lines;
    #my %phonebook = map {$_.comb(/\w+/)}, @lines;

    my %phonebook = slurp($filename).comb(/\w+/);

    my $name = prompt "Name:";
    say %phonebook{$name};

### 6.7 kv

    #!/usr/bin/env perl6
    use v6;

    my %user =
        "fname" => "Foo",
        "lname" => "Bar",
        "email" => "foo@bar.com",
    ;

    for %user.kv -> $key, $value {
        say "$key  $value";
    }

Output

    fname  Foo
    lname  Bar
    email  foo@bar.com

### 6.8 Looping over keys of a hash

The same way we can loop over keys of a hash - after fetching them using the "keys" function.

The declaration of hashes in Perl 6 is similar to that in Perl 5 but when access individual elements in the hash it now keeps the % prefix. Thus the value of the key "Foo" will be %phone{"Foo"}. Similarly if $name contains "Foo" we can use the %phone{$name} expression to get back the relevant value.

As mentioned earlier the string interpolation of hashes requires curly braces around the statement.

    #!/usr/bin/env perl6
    use v6;

    my %phone =
        "Foo" => 123,
        "Bar" => 456,
    ;

    for keys %phone -> $name {
        say "$name %phone{$name}";
    }

Output

    Bar 456
    Foo 123

## 7. Subroutines

### 7.1 Subroutines in Perl 6

I have been thinking for some time now on how to teach subroutines in Perl 6 and I don't have a good answer yet. So for now, instead of some methodological introduction I'll just try to throw together a few examples and we'll see if something comes out of that?

In Perl 6 just as in Perl 5 one can define a subroutine without specifying the list of parameters. When someone calls that subroutine the values are found in the private array called @_. There is more to even that in Perl 6 than in Perl 5 but let's look at the nicer examples of Perl 6:

In Perl 6 one can define real signature for the subroutines and let the language, or rather the implementation, check if the valid set of arguments were passed.

Actually, instead of checking if the right number of arguments were passed Perl will not even call the function if you did not give the correct list of arguments.

I can already hear the people getting worried about the flexibility of passing an arbitrary number of arguments and then letting the function figure it out. Don't worry. You can have that in Perl 6 too.

### 7.2 Simple definition with required parameters

In order do define a subroutine in Perl 6 we use the "sub" keyword. Then comes the name of the subroutine with a list of parameters. After that comes a block that implements the subroutin where you can use the variables defined in the signature.

In the most simple case shown in the example we have two scalar variables ($a and $b) as parameters. In this case the parameters are required. The user of the sub has to supply them though there are several way to do that.

The simple way is just to provide the in the same order as they are shown in the signature.

The most basic example I usually show is the add function with two parameters. That's usually enough in Perl 5 but very far from that in Perl 6.

Positional parameters:

    #!/usr/bin/env perl6
    use v6;

    sub add ($a, $b) {
        return $a + $b;
    }

    say add(2, 3);     # returns 5

    say add(2);        # is an error
    say add(2, 3, 4);  # is an error

Then if you try to call this with 3 parameters like this:

    say add(2, 3, 4);

Rakudo will throw a run-time exception as it cannot find the appropriate function.

### 7.3 Subroutine with arbitrary number of parameters

That would be the time to show how to define a subroutine that can get arbitrary number of values, but that requires introducing two concepts at a time. So I'll have to find a better set of examples.

Anyway, if we would like to implement a sum() subroutine that can get any number of values we need to define it like this:

    #!/usr/bin/env perl6
    use v6;

    sub sum(*@values) {
        my $sum = 0;
        for @values -> $v {
            $sum += $v
        }
        return $sum;
    }

    say sum(2, 3);      # 5

    my @a = (2, 3, 4);
    my $z = 5;
    say sum(@a, $z);  # 14

That is, we have to say that the expected parameter is a slurpy array. The * means it is slurpy, the @ still means it is an array. It will then accept any value as parameter and put them in the @values array.

So I can call it either with literal scalars or even with a list of arrays and scalars mixed

### 7.4 Passing arrays and hashes

In Perl 5 we had to learn about references in order to be able to pass more than one array or hash to a subroutine. That also meant the subroutine always has full access to the original data structure. Effectively a call-by-reference thing. So the subroutine could change the passed parameter by accident. Not really clean coding.

In Perl 6 there are no such references and there is no need for them. If you'd like to accept a real array or hash as a parameter for a subroutine you can declare that in the signature of the subroutine.

For example I have a script that generates html pages from templates and I have some code like this: (Mine was using the HTML::Template from the November wiki project http://www.november-wiki.org/ but that's not relevant now so I am just printing out the parameters.)

    use v6;

    sub process_template($input, $output, %params) {
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    my %data = (
            fname => "Foo",
            lname => "Bar",
            );

    process_template("index.tmpl", "index.html", %data);

output:

    open index.tmpl
    replace {"lname" => "Bar", "fname" => "Foo"}
    save index.html

Now I know this example does not show the real power of having several complex data structures in the parameter list. I could have written:

    sub xyz($input, @value, %data) { }

and then pass a scalar, an array and a hash. I just don't have a good example for that yet.

Anyway the above example had a bit of data multiplication and the name of the output file could have been generated from the name of the template. It is the same name just with different extension.

So I could write the code like this, passing only the name of the template and generating the name of the output file from that:

output:

    open index.tmpl
    replace {"lname" => "Bar", "fname" => "Foo"}
    save index.html

In this code ~ is the concatenation operator (replacing the . from Perl 5).

### 7.5 Multiple signatures

That's ok but there are cases when the name of the template and the output file are different. So I need both versions. In Perl 6 it is not a problem, I can just define both of the functions, telling Perl that they are multies - so it won't think I am redefining a function by mistake.

    #!/usr/bin/env perl6
    use v6;

    multi sub process_template($input, %params) {
        my $output = substr($input, 0, -4) ~ "html";
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    multi sub process_template($input, $output, %params) {
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    my %data = (
            fname => "Foo",
            lname => "Bar",
            );

    process_template("index.tmpl", %data);
    process_template("from.tmpl", "to.html", %data);

The output will be:

    open index.tmpl
    replace {"lname" => "Bar", "fname" => "Foo"}
    save index.html
    open from.tmpl
    replace {"lname" => "Bar", "fname" => "Foo"}
    save to.html

For every function call Rakudo will look for a function that matches the signature and call that function. If no match is found it will throw an exceptions so calling without a hash will throw a run-time exception:

    process_template("from.tmpl", "to.html");

Non-Associative argument for %params in call to process_template
Sometimes that's what we want. In other cases we might want to allow the user to call the above functions without providing any parameters. We could write two additional functions without the %params but that just unnecessary code duplication. Instead we can declare the hash as optional:

### 7.6 Optional parameters

    multi sub process_template($input, %params?) {

    multi sub process_template($input, $output, %params?) {

If we defined our functions that way we could call

    process_template("from.tmpl", "to.html");

and it would know how to find the right subroutine leaving the %params hash empty.

Side note: this part is not yet implemented so the above code won't yet work.

There is a lot more one can do with signatures but I think this is enough for today.

Question mark (?) after the variable name means it is an optional varible.

    multi sub process_template($input, %params?) {

example/subroutines/optional_params.p6

    #!/usr/bin/env perl6
    use v6;

    # search the text within a file return 1 if found, 0 if not
    sub search ($text, $file) {
        my $fh = open $file, :r;
        for $fh.readline -> $line {
            if index($line, $text) > -1 {
                return 1;
            }
        }
        return 0;
    }

    # optional parameter
    sub search2($text, $file, $all?) {
        my $fh = open $file, :r;
        my $cnt = 0;
        for $fh.readline -> $line {
            if index($line, $text) > -1 {
                return 1 if not $all;
                $cnt++;
            }
        }
        return $cnt;
    }

### 7.7 Named only parameters

The user can decide to pass the parameters in as key-value pairs.

Parameters that are declared as positional can always passed as named but if the variable name is prefixed with a colon : then it can only be passed as a named argument and it is optional. To make a named-only parameter required put an exclamation mark ! after it: :$b!

    #!/usr/bin/env perl6
    use v6;

    sub foo($a, :$b) {
        return $a + $b * 2;
    }

    say foo(b => 2, 3);   # 7
    say foo(4, 9);
    # Too many positional parameters passed; got 2 but expected 1

    say foo(2);
    # 2   Use of uninitialized value in numeric context
    say foo(2, 3, 4);
    # Too many positional parameters passed; got 3 but expected 1

### 7.8 No parameter definition - perl 5 style

You can also use the old Perl 5 style way to defined functions.

In such case you would not define a signature and any value passed to the subroutine will show up in the internal @_ variable. Any array or hash will be flattened.

    use v6;

    my $z = add(19, 23);
    say "first ", $z;

    say "second ", add2(19, 23);

    say "third ", add3(2, 3);

    sub add {
        my ($x, $y) = @_;
        return $x + $y;
    }

    sub add2 ($x, $y) {
        return $x + $y;
    }

    sub add3 (Int $x, $y) {
        return $x + $y;
    }

### 7.9 Fibonacci

    #!/usr/bin/env perl6
    use v6;

    my $N = 10; # @*ARGS;

    say "Computing Fibonacci of {$N}";
    say "Result: " ~ fib_recursive($N);
    say "Result: " ~ fib_r($N);
    say "All: " ~ join " ", fib($N);

    sub fib_recursive ($n) {
        return 1 if $n == 1 or $n == 0;
        return fib_recursive($n-1)+fib_recursive($n-2);
    }

    sub fib_r ($n) {
        return 1 if $n == (1|0);
        return fib_r($n-1)+fib_r($n-2);
    }

    sub fib ($n) {
        my @fibs;

        @fibs.push(1) if $n > 0;
        @fibs.push(1) if $n > 1;

        for 2..$n {
            @fibs.push(@fibs[*-1]+@fibs[*-2]);
        }
        return @fibs;
    }

### 7.10 Creating Operators

    #!/usr/bin/env perl6
    use v6;

    sub infix:<is_a_lot_bigger> ($leftop, $rightop) {
        return $leftop > $rightop + 10 ?? 1  !! 0;
    }

    say 4 is_a_lot_bigger 3;
    say 14 is_a_lot_bigger 3;

    sub infix:<\>\>\>> ($leftop, $rightop) {
        return $leftop > $rightop + 10 ?? 1  !! 0;
    }
#
    say 7 >>> 3;
    say 24 >>> 8;
#

    sub infix:<+++> ($leftop, $rightop) {
        return $leftop > $rightop + 10 ?? 1  !! 0;
    }

    say 7 +++ 3;
    say 24 +++ 8;

### 7.11 Create your own operator

    use v6;

    sub infix:<zzz> ( $a, $b ) { return $a+$b };
    say 2 zzz 3;

## 8. Perl 6 Regexes

### 8.1 Regexes in Perl 6

You can still use `m//` as a regex but as you can see spaces in the regex are non significant. It is quite similar to the effect of `/x` option in PCRE.

In Perl 6 the smart match `~~` operator is used for regex matching.

For negative matching use the `!~~` operator.

example/regex2/simple.p6

    use v6;

    my $text = "Learning regexes";
    if $text ~~ m/ regex / {
        say "This is about regexes!";
    }

    if $text !~~ m/ foobar / {
        say "No foobar in $text";
    }

Regex in Perl 6 disregard spaces by default. People who are used to the Perl 5 style regular expressions - which means basically every programming language that has a regular expression library - will usuall think as spaces being significant in the regular expressions.

We will have to unlearn that and think about the individual bits and pieces that are the tokens we would like to match.

Basically Perl 6 regexes work as if you always had the /x modifyer on which in Perl 5 means disregard spaces and treat # as start of comment.

### 8.2 Match digit

Just as in PCRE some letters have special meaning if the are following a back-slash: \d means a digit.

### 8.3 Match Any character

The . (dot) is a meta-character that will be ready to match any character.

As opposed to the Perl regular expressions in Perl 6 this includes newlines

If you want to match any character except newline you can use the \N special character class.

There are also some non-alnum characters that have special meaning though their meaning might be (a bit) different than in PCRE: A . can match any character. Even newline.

example/regex2/match_any_character.p6

#!/usr/bin/env perl6
use v6;

my $str = 'The black cat climbed to the green tree.';

if ($str ~~ m/c./) {
    say "Matching '$/'";      # 'ck'
}

my $text = "
The black cat
climebed the greeen tree";

if ($text ~~ m/t./) {
    say "Matching '$/'";     # 't '  with the second ' on a new line
}

if ($text ~~ m/t\N/) {
    say "Matching '$/'";     # 'th'    of the word 'the'
}

### 8.4 Escape characters

An important change from the way the reular expressions worked in Perl 5 is that in Perl 6 any non-alphanumeric character needs to be escaped. Even if they don't currently have any special meaning or you'll get a "Statement not terminated properly" error during compilation. In a way this will make all the regexes look less clean as we will seen a lot more character escaping but it might force us to pick cleaner solution even if they are more wordy.

So for exmple we will have to escpe the = sign or the dash: - .

To allow further extension of the regexes Any other non-alnum character must be escaped:

We will have to be very careful as there are going to be a number of cases that can easily trip up anyone who already uses regular expressions. For example the pound key # is now a special character by default meaning a comment.

So you'd better quote it when you really mean to match a # character.

### 8.5 Spaces in regex

Matching space(s) can be done in several ways

example/regex2/spaces_in_regex.p6

#!/usr/bin/env perl6
use v6;

my $str = 'The black cat climbed to the green tree.';

if $str ~~ m/black cat/ {
    say "Matching '$/'";
} else {
    say "No match as whitespaces are disregarded";
}

if $str ~~ m/  black \s cat / {
    say "Matching - Perl 5 style white-space meta character works";
}

if $str ~~ m/black  ' '  cat/ {
    say "Matching the real Perl 6 style would be to use strings embedded in regexes";
}

if $str ~~ m/black <space> cat/ {
    say "Matching - or maybe the Perl 6 style is using named character classes ";
}

You can see that once can embed literal strings in the regex using single quotes and there are new type of character classes witing angle brackets.

### 8.6 End of string anchors

of course the above regex will match things that are not phone numbers as well:

example/regex2/end_of_string_anchors_needed.p6

use v6;

my $phone = "054-1234567";

if "foo 3-4 bar" ~~ m/ \d '-' \d / {
    say "match others as well";
}

^ always matches the beginning of the string
$ always matches the end of the string
+ (and *, ?) are the same quantifiers as earlier
example/regex2/end_of_string_anchors.p6

use v6;

my $phone = "054-1234567";

if $phone ~~ m/ ^ \d+ '-' \d+ $ / {
    say "Use anchors and quantifiers";
}

On the other hand if you'd like to match beginning or end of line, those are ^^ and $$. So no need for special mode for this. Also if you want to match a newline you can use \n and if you want to match any character except newline (the old meaning of .) then just use \N.

### 8.7 Ranges

ranges in regex are now marked the same way as ranges outside of regexes:

example/regex2/ranges.p6

use v6;

for '054-1234567', '054-0123456' -> $str {
    if $str ~~ m/ ^ \d+ '-' <[1..9]> \d+ $ / {
        say "$str is a phone number (using range)";
    }
}

### 8.8 Regex Arithmetic

example/regex2/arithmetic.p6

    use v6;

    for '054-1234567', '054-0123456' -> $str {
        if $str ~~ m/ ^ \d+ '-' <+digit - [0]> \d+ $ / {
            say "$str is a phone number (using character class arithmetic)";
        }
    }

    #  <[\d] - [0]>  will also work...

### 8.9 Regex Quantifier

You might want to be more specific with the quantifier:

example/regex2/quantifier.p6

    use v6;

    for '054-1234567', '054-12345678', '054-1234', '08-1234567' -> $str {
        if $str ~~ m/ ^ \d ** 3 '-' <+digit - [0]> \d ** 6 $ / {
            say "$str is a phone number (non-zero + 6 digits)";
        }
    }

### 8.10 Quantifier 2

OTOH you might want to be a bit flexible with that number of digits in the prefix:

### 8.11 Match several words

This won't match as there are more words

example/regex2/matching_word_fails.p6

    use v6;

    my $words = 'foo, bar, moo';

    if $words ~~ m/^ \w+ $/ {
        say 'no match';
    }

so we need to add a regex for the separators , and spaces and we put the whole thing in a [] which is a (non-capturing) grouping, apply a quantifier on that but we also need to add another word matching regex for the last word

    use v6;

    my $words = 'foo, bar, moo';

    if $words ~~ m/^ [\w+\,\s*]* \w+ $/ {
        say 'match words';
    }

It could be also written this way: The generic quantifier can also get a separator on its right hand side.

example/regex2/match_several_words2.p6

    use v6;

    my $words = 'foo, bar, moo';

    if $words ~~ m/^ [\w+] ** [\,\s*] $/ {
        say 'match words again';
    }

### 8.12 Alternates

Alternates `||` with first match wins:

Alternates `|` with longest token match:

    say 'monday' ~~ m/ mon | monday /;

### 8.13 Match object

Every time there is a regex operation a localized version of the match variable $/ gets set to the actual match. That variable has a lot more power than simply containing the match. We'll talk about that later but for now see this example

What was printed there, when printing the result of a regex match? $/ holds the match and is printed automatically but it could be also printed by itself:

    $/.from  starting position of the match
    $/.to    end position of the match
    $/.chars number of characters matched
    $/.Str   matched text
    $/.orig  original matched string

### 8.14 Capture

but it can be used in other ways as well using parentheses around parts of the regex will capture those parts:

    use v6;

    my $phone = "054-1234567";

    if $phone ~~ m/ (\d+) \- (\d+) / {
        say "prefix: $/[0]";
        say "number:  $/[1]";
        say "full match: $/";
    }

the matches are also available as $0, $1, ...

### 8.15 Named Regex

    use v6;

    my $phone = "054-1234567";

# You can also create named regexes:

    my regex prefix { \d ** 2..3 }
    my regex number { <+digit - [0]> \d ** 6 }
    if $phone ~~ m/^ <prefix> '-' <number> $/ {
        say "prefix $/<prefix>  number: $/<number>";
    }

# as you can see $/ is also a hash

let's create the named regexes for the word and duplicate:

    use v6;

    my $s = 'The elvish brown fox jumped over the the lazy dog';
    my regex word { \w+ [ \' \w+]? }
    my regex dup  { << <word=&word> \W+ $<word> >> }

    if $s ~~ m/ <dup=&dup> / {
        say "Found '{$<dup><word>}' twice in a row";
    }

### 8.16 Capture with quantifier

going back to the words but this time replace the square brackets [] by parentheses () for capturing

use v6;

    my $words = 'foo, bar, moo';
    if $words ~~ m/ (\w+) ** [\,\s*] / {
        say "match words: $/";
        say "$/[0]";
        say "first:  $/[0][0]";
        say "second: $/[0][1]";
        say "third:  $/[0][2]";
        say "all: ", $/[0].join(' | ');
    }

### 8.17 Reuse capture

You can also reuse the matches within the regex

Let's see an example (based on the perl 6 book) to try to find repeated words:

    use v6;

    my $s = 'The elvish brown fox jumped over the the lazy dog';
    if $s ~~ m/ (\w+) \W+ $0 / {
        say $/[0];
    }

# this will print an 'e' which is not what we wanted

### 8.18 Word boundary

    use v6;

    my $s = 'The elvish brown fox jumped over the the lazy dog';
    # << and >> mark word boundary
    if $s ~~ m/ << (\w+) \W+ $0 >> / {
        say $/[0];  # will print 'the'
    }

### 8.19 Rules

    use v6;

    # Let's see something else
    my $apache = qq{127.0.0.1 - - [10/Apr/2007:10:39:11 +0300] "GET / HTTP/1.1" 500 606 "-" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.3) Gecko/20061201 Firefox/2.0.0.3 (Ubuntu-feisty)"};

    my regex ip   { \d+\.\d+\.\d+\.\d+ }
    my regex date { \[ .*? \] }

    if $apache ~~ m/ <&ip> \s+ \- \s+ \- \s+ <&date> \s+ \"GET / {
        say "Apache: $/";
    }

use the :sigspace modifier or in short :s

    if $apache ~~ m/:s <&ip> \- \- <&date> \"GET / {
        say "Apache: $/";
    }

    my regex apache { :s <&ip> \- \- <&date> \"GET }
    if $apache ~~ m/ <&apache> / {
        say "Apache regex: $/";
    }

    my rule apache_rulez { <&ip> \- \- <&date> \"GET }
    if $apache ~~ m/ <&apache_rulez> / {
        say "Apache rule: $/";
    }

### 8.20 Tokens

    use v6;

    # Let's see something else
    my $good = 'this_is_a_long_variable = 456 + 789';
    my $bad  = 'this_is_a_long_variable = 456 +';

    for $good, $bad -> $exp {
        if $exp ~~ m/:s ^ \w+ \= \d+ \+ \d+ $/ {
            say "Match: $exp";
        }
    }

mark the quantifyers as not backtracking:

    m/:s ^ \w+: \= \d+: \+ \d+: $/

or use the :ratchet modifier to set all the quantifiers non-backtracking:

    m/:s :ratchet ^ \w+ \= \d+ \+ \d+ $/

and there is a special name for this called token

    my token sentence { ^ \w+ \= \d+ \+ \d+ $ }

### 8.21 Replace

- example/regex2/subst.p6

    use v6;

    # substitution:

    my $str = "replace  all the space   in the string by  one space";

    say $str.subst(/ \s+ /, ' ',  :g);

### 8.22 Grammar

- example/regex2/add.p6

    use v6;

    BEGIN {
        @*INC.push('examples/regex2/');
    }
    use Add1;

    my @experssions = (
            "2 + 3",
            "2 + 4 ",
            "2 + 3 x",
            "2 +",
            "2 3",
            "2 - 3",
    );

    for @experssions -> $exp {
        print $exp, " ";
        my $result = Add1.parse($exp);
        say $result ?? 'OK' !! 'NOT OK';
        CATCH {
            say "exception received: $!";
        }
    }

- example/regex2/Add1.pm

    grammar Add1 {
        rule TOP       { ^ <math> $ }
        rule math      { <operand> <operator> <operand> }
        token operand  { \d+ }
        token operator { <[\+\*]> }
    }

output:

    2 + 3 OK
    2 + 4  OK
    2 + 3 x NOT OK
    2 + NOT OK
    2 3 NOT OK
    2 - 3 NOT OK

### 8.23 Grammar with error handling

example/regex2/Add2.pm

grammar Add2 {
    rule TOP { ^ <math> $ }
    rule math {
        <operand>
        [ <operator> || {die "missing operator"} ]
        [ <operand> || { die "Missing second operand" } ]
        [ \S { die "Invalid value after the second operand" } ]?
    }
    token operand { \d+ }
    token operator { <[\+\*]> || \D { die "Invalid operator" } }
}

output:

    2 + 3 OK
    2 + 4  OK
    2 + 3 x exception received: Invalid value after the second operand
    2 + exception received: Missing second operand
    2 3 exception received: missing operator
    2 - 3 exception received: Invalid operator

### 8.24 Grammar that is easier to extend

    grammar Add3 {
        rule TOP { ^ <math> $ }
        rule math {
            <operand>
                [ <operator> || [ \D { die "Invalid operator" } ] || {die "missing operator"} ]
                [ <operand> || { die "Missing second operand" } ]

                [ \S { die "Invalid value after the second operand" } ]?
        }
        token operand { \d+ }
        proto token operator { <...> };
        token operator:sym<\+>    { '+' };
        token operator:sym<\*>    { '*' };
    }

output:

    2 + 3 OK
    2 + 4  OK
    2 + 3 x exception received: Invalid value after the second operand
    2 + exception received: Missing second operand
    2 3 exception received: missing operator
    2 - 3 exception received: Invalid operator

### 8.25 Grammar subclass

example/regex2/Add4.pm

    use Add3;
    grammar Add4 is Add3 {
        token operator:sym<\->    { '-' };
    }

example/regex2/Add4.pm.out

    2 + 3 OK
    2 + 4  OK
    2 + 3 x exception received: Invalid value after the second operand
    2 + exception received: Missing second operand
    2 3 exception received: missing operator
    2 - 3 OK

## 9. Junctions in Perl 6

### 9.1 Junctions

As we already seen in a previous chapter we can use a junction to check if a values is among a given set of values.

### 9.2 More tutorial with Junctions

TODO

## 10. Modules in Perl 6

### 10.1 Exporting subs from modules

When I last checked, exporting from modules was not yet implemented in Rakudo.

example/modules/A.pm

    module A {
        sub foo() is export {
            say 'in foo';
        }
    }

example/modules/export.p6

    use v6;

    BEGIN {
        push @*INC, 'examples/modules';
    }

    use A;

    foo();

## 11. Object Oriented Perl 6

### 11.1 Simple Point class

In Perl 6 we define classes with the "class" keyword. It can be used either as the first line of a files or infront of a block defining the class.

The `has` keyword is used to create attributes and the various twigils can be used to fine tune the meaning of those attributes.

Using dot (.) as the twigil will create a public attribute meaning it will automatically create and accessor for that attribute.

When a class is defined it automatically provides a constructor called new that can get a hash to set the attributes.

`WHAT` helps with introspection so we can ask what class does an object belong to.

By default the accessors are read only so you cannot assign to them.

    use v6;

    class Point {
        has $.x;
        has $.y;
    };

    my $a = Point.new(x => 23, y => 42);

    say $a.WHAT;     # Point()

    say $a.x;        # 23

    $a.x = 10;       # Exception: Cannot assign to readonly variable.

### 11.2 Readwrite attributes and accessors

Setting the "rw" trait on the attribute will also generate a read-write accessor that is an lvalue so you assign to it.

    use v6;

    class Point {
        has $.x is rw;
        has $.y is rw;

    };

    my $a = Point.new(x => 23, y => 42);

    say $a.x;   # 23

    $a.x = 10;

    say $a.x;   # 10

### 11.3 Class Methods

The "method" keyword can be used to create methods for the class.

    use v6;

    class Point {
        has $.x is rw;
        has $.y is rw;

        method reset {
            $.x = 0;
            $.y = 0;
        }
    };

    my $a = Point.new(x => 23, y => 42);

    say $a.x;  # 23

    $a.reset;

    say $a.x;  # 0

### 11.4 Private Attributes

Using exlamation mark as the twigil indicates tha the attribute is private. So has $!x will create a variable that can be accessed from within the class bug which won't have an accessor from the outside world.

    use v6;

    class Point {
        has $.x is rw;
        has $.y is rw;

        has $!weight;

        method reset {
            $.x = 0;
            $.y = 0;
            $!weight = 0;
        }
    };

    my $a = Point.new(x => 23, y => 42, weight => 2);

    say $a.x;  # 23
    say $a.weight;  # Exception: Could not locate a method 'weight' to invoke on class 'Point'

    $a.reset;

    say $a.x;  # 0

### 11.5 Method with parameters

Methods can have parameters, just as any subroutine would have.

    use v6;

    class Point {
        has $.x is rw;
        has $.y is rw;

        method reset {
            $.x = 0;
            $.y = 0;
        }

        method set_coordinates($x, $y) {
            $.x = $x;
            $.y = $y;
        }
    };

    my $a = Point.new(x => 23, y => 42);

    say $a.x;  # 23

    $a.set_coordinates(10, 20);

    say $a.x;  # 10

### 11.6 Inheritence of classes

Classes can inherit using the "is" keyword.

    use v6;

    class Point {
        has $.x is rw;
        has $.y is rw;

        method reset {
            $.x = 0;
            $.y = 0;
        }
    };

    class Point3D is Point {
        has $.z is rw;

        method reset {
            $.z = 0;
            nextsame;
        }
    }

    my $a = Point3D.new(x => 23, y => 42, z => 12);

    say $a.WHAT;
    say $a.x;     # 23
    say $a.z;     # 12

    $a.reset;

    say $a.x;  # 0
    say $a.z;  # 0

### 11.7 Classes in Perl 6

    #!/usr/bin/env perl6
    use v6;

    class Point {
        has $.x is rw;
        has $.y is rw;

        method origo {
            $.x = 0;
            $.y = 0;
        }
    }

    my $a = Point.new(x => 23, y => 42);
    say $a.WHAT;    # Point

    say $a.x;
    say $a.y;

    $a.origo;

    say $a.x;
    say $a.y;

    $a.x = 19; # TODO why can I not ue $a.x(19) here ?

    say $a.x;

## 12. Testing in Perl 6

### 12.1 skip a test

    use v6;
    use Test;

    plan 3;

    ok 1, 'one';
    ok 1, 'two';
    if 1 {
        skip "three";
    } else {
        ok 1, 'three';
    }

## 13. Perl 5 to Perl 6

### 13.1 Intro

While there are many similarities between Perl 5 and Perl 6 there are also a few substantial changes. This chapter tries to ease the transition for Perl 5 programmers to Perl 6.

In this chapter you won't find strongest operators of Perl 6. What I am trying to show here is that given a Perl 5 program how one can more-or-less straight forward translate it to Perl 6.

### 13.2 Hello World

The print() is the same as in Perl 5 but there is a shorter way using say(). That will probably be more common in the future as it also appends a newline at the end of the values it prints. (Actually Perl 5.10 already has this feature)

example/p526/hello_world.p6

    use v6;

    # Perl 5: print
    # Perl 5.10: say

    # Perl 6: print still works and there is say()
    # just like in 5.10 adding a newline automatically

    print "Hello World\n";
    say "Hello World";

### 13.3 Scalars

    use v6;

    # Perl 5: my
    # Perl 6: In Perl 6 you always need to have "my" (think as always use strict)
    my $name = "Moose";

    # Perl 6: Scalar variables still interpolate in double quoted strings:
    say "Hello $name";
    # In order to make the Object Oriented people happy Perl 6 also allows this:
    "Hello $name".say;

    # Perl 5: <STDIN>
    # Perl 6: As reading a single line from standard input
    #         is usually preceeded by a print statement the keyword to do that in Perl 6
    #         is called prompt()
    #         it chomps the newline off automatically.
    my $line = prompt('Please type in your name: ');
    say "Hi $line, how are you?";

    # Perl 5: substr
    # substr works as before but there is currently no 4 parameter version.
    say substr $line, 2, 3;

    # it also works this way
    $line.substr(2, 3).say;

    # Perl 5: length
    my $a = "This is a string";
    # Perl 6: Does not have a length() function, instead it has several
    # functions with more precise meaning of the type of unit you are asking for:
    # bytes, chars
    say $a.chars;
    say $a.bytes;

    # There are also graphs and codes but they are not yet implemented in Rakudo
    # see S32-setting-library/Str.pod for details

    # Perl 5: chomp
    # Perl 6: It will be used a lot less in Perl 6 as reading lines in Perl 6
    # automatically chomps off the newline. In any case, in Perl 6 chomp returns
    # the chomped string and does NOT change the original
    my $b = chomp $a;

    # Perl 5: defined
    # Perl 6: is the same:
    defined $b;

    # Perl 5: undef
    # Perl 6: is NOT the same !
    #$b = undef;

    # Perl 5: .
    # Perl 6: String concatenation is now done with the ~ operator
    my $str = "Foo" ~ "Bar";
    $str.say;

    $str ~= " and Moo";
    say $str;

    # Perl 5: x
    # Perl 6: string repetition stayed the same
    say "abc" x 3;

    # Perl 5: index and rindex
    # Perl 6: are the same
    my $s = "The brown cat climbed the green tree";
    index $s, "b";

    # Perl 5: lc, uc
    # Perl 6: are the same
    say lc "Hello World";
    say uc "Hello World";

### 13.4 Arrays

    use v6;

    # Creating an array in Perl 6 can be the same as in Perl 5
    my @numbers = ("one", "two", "three");

    # For debugging prints one will youse the .perl method instead of Data::Dumper:
    @numbers.perl.say;   # ["one", "two", "three"]

    # In Perl 6 there is no need for the parentheses:
    my @digits = 1, 3, 6;
    @digits.perl.say;  # [1, 3, 6]

    # The Perl 5 qw() operator is replaced by the angle brackets:
    my @names = <foo bar baz>;
    @names.perl.say;  # ["foo", "bar", "baz"]

    # Arrays do NOT interpolate any more in double quoted strings:
    say "@names";                        # @names

    # So you can safely write the following without escaping the at mark:
    say "joe@names.org";                 # joe@names.org

    # If you do want to interpolate the values of an array you have to put it inside curly braces:
    say "names: {@names}";               # names: foo bar baz

    # When accessing elements of an array in Perl 6 the sigil does NOT change!
    # This will be very strange for Perl 5 programmers but it has some advantages
    # on the long run.

    say @names[0];    # foo

Instead of the quite ugly `$#array` notation used in Perl 5 fetching the number of elements of array is done in Perl 6 by the elems() function Though I think the object oriented writing is much nicer here:

    say @names.elems;  # 3

Ranges are available in Perl 6 just as in Perl 5:

    my @d = 1..11;
    @d.perl.say;    # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

It works with characters as well:

    my @chars = ('a' .. 'd');
    @chars.perl.say;    # ["a", "b", "c", "d"]

The C-style version of the Perl 5 "for" loop is now called "loop"
but I won't show it here as it is way better to use the
the iterator style for loop that most people in Perl 5 write as "foreach".
In Perl 6 it is spelled as "for".

    for 1..3 -> $i {
        say $i;       # 1   # 2    # 3     (on 3 lines)
    }

The same works on arrays as well:

    for @names -> $n {
        say $n;        # foo  # bar # baz    (on 3 lines)
    }

This is one of the cases where you don't need to declare a variable
using "my". The looping variable is automatically declared for you
and scoped to the block of the for loop.

If you need to iterate over the indexes of an array then you could write:

    for 0..@names.elems -1 -> $i {
        say "$i {@names[$i]}"; # 0 foo  # 1 bar  # 2 baz   (on 3 lines)
    }

Or you can pick one of the suggestions I got from Moritz Lenz on #perl6 (Thanks Moritz!):

    for @names.keys -> $i {
        say "$i {@names[$i]}"; # 0 foo # 1 bar  # 2 baz    (on 3 lines)
    }

The keys method borrowed from the hashes will return all the indexes of an array.
Even if your array has "holes" in it, elements with undef as value, key will
still include the indexes of such elements.

split acts similar to its Perl 5 version but the defaults do not apply any more
and you should read the spec anyway.

See S32-setting-library/Str.pod for more details. ( http://perlcabal.org/syn/S32/Str.html )

    "a,b,c".split(',').perl.say;    # ["a", "b", "c"]

### 13.5 Hashes

    #!/usr/bin/env perl6
    use v6;

    # creates hash as in Perl5
    my %h = ("Perl", "Larry", "Python", "Guido");
    # Perl5: hash element
    say %h{"Perl"};
    # accessing hash elements is simialr but the sigil remains %
    # Perl5: hash key without quotes
    say %h<Perl>;
    # if you want to leave out the quotation marks
    # "" (was $h{Perl} in Perl5)

    # Perl5: exists
    %h.exists("Perl");
    # checks if key exists (formally the exists function)
    defined(%h<Perl>);
    # checks if the value of the give key is defined

    # Perl5: keys
    keys %h;  # returns a list of keys just as in Perl5
    %h.keys; # also works

    # Perl5: values

    # Perl5: each
    # %h.kv
    for %h.kv -> $key, $value {
        say "$key => $value";
    }

### 13.6 Control Structures

    use v6;

    # Perl 5: if
    # Perl 6: Same, but no need to for () around the condition
    my $x = 23;
    if $x < 42 {
    }

    # Perl5: foreach (for)
    my @names = <Larry Guido Matz>;
    for @names -> $person {
        say $person;
    }

    # Perl5: for (foreach)
    loop (my $i=1; $i < 10; $i++) {
        say $i;
    }

    # infinite loop:
    loop {
        # well, almost infinite :-)
        last;
    }

    # Perl5: while
    while $i < 10 {
        say $i;
    }

### 13.7 Functions

    #!/usr/bin/env perl6
    use v6;

    my $lang = "Perl";

    creator("Larry", $lang);
    # still works as in Perl5 and you get the values in @_
    sub creator {
        # you can copy them
        my ($person, $language) = @_;
        say "the creator of $language is $person";
    }

    creator_2("Larry", $lang);
    # you can also defined the expected parameters
    sub creator_2 ($person, $language) {
        # but in this case you cannot change the variables
        $language ~= 6;
        say "the creator of $language is $person";
    }

    creator_3("Larry", $lang);
    # you can also defined the expected parameters
    sub creator_3 ($person, $language is rw) {
        # now you can change the $language variable but
        $language ~= 6;
        say "the creator of $language is $person";
    }
    # and it also changes the parameter itself.
    say "What ? $lang";

    creator_4("Larry", $lang);
    sub creator_4 ($person is copy, $language is rw) {
        $person ~= " Wall";
        say "the creator of $language is $person";
    }

### 13.8 Files

example/p526/files.p6

    #!/usr/bin/env perl6
    use v6;

    # Perl5: open
    my $fh = open 'examples/p526/files.p6', :r;

    # Perl5: close
    close($fh);
    $fh.close

    # Perl5: <$fh>
    # $fh.readline

### 13.9 Modules, Classes

example/p526/modules.p6

    #!/usr/bin/env perl6
    use v6;

    # Perl5: package
    module Person {
        our $fname;
        our $lname;
    }
    $Person::fname = "Foo";
    $Person::lname = "Bar";

### 13.10 Perl 5 to Perl 6

    @ARGV                    @$ARGS
    $0                       $PROGRAM_NAME
    foreach my $s (@arr) {}  for @arr -> $s { }

    $#array                  @array.end
    scalar @array            @array.elems

## 14. Shell to Perl 6

### 14.1 Intro

Perl 5 already was a good replacement for any shell programming. With the new features Perl 6 improves this even further.

In this section we will see several examples especially for shell programmers.

### 14.2 Running external command from Perl 6 (shell, QX)

### shell

The `shell` function receives a string that is exactly the same as you'd type on the command line and executes the external command on your behalf. It connects the standard output, standard error and standard input to whatever your Perl 6 code had. This can be useful for interactive programs that you want to wrap with your code.

    use v6;

    my $res = shell("ssh perl6maven.com uptime");
    say "Command finished";
    say $res;

Here we run the `ssh` command, pass to it the name of the server and the command (uptime) to be executed on the remote server. When Perl 6 executes this command, the output of the command will be printed on the screen and when it asks for input whatever we type will be sent to the command. Specifically becasue this was the first time I ran ssh to that server, it first aske me if I recognize the RSA fingerprint of the server. I could type in 'yes' and the process continued.

    $ perl6 run_ssh.p6

output:

    The authenticity of host 'perl6maven.com (173.255.196.65)' can't be established.
    RSA key fingerprint is fd:18:2c:05:81:b8:59:54:30.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added 'perl6maven.com' (RSA) to the list of known hosts.

    13:55:57 up 27 days,  2:20,  0 users,  load average: 0.07, 0.09, 0.06
    Command finished
    Proc::Status.new(exit => 0, pid => Any, signal => 0)

The text 'Command finished' is printed only after the external command has finished.

The value returned by the shell command is a Proc::Status object.

### QX

    use v6;

    my $out = QX("ssh perl6maven.com uptime");
    say "Command finished";
    say $out;

The QX function also receives the string that you'd type on the command line, but instead of printing the output to the screen it will return it to the caller and we can assign it to a scalar variable.

In this example we used the same ssh command and it will work now, because the previous time we have already accepted the RSA fingerprint. If we ran this script the first time, it would seem to be "stuck" as it was waiting for input from the user.

output:

    Command finished
    14:04:11 up 27 days,  2:28,  0 users,  load average: 0.10, 0.07, 0.05

In this case too perl will wait till the external command finished and qx returns ithe output. The big difference is that this output has not been printed to the screen yet, it can be found in the $out variable.

We can print it out - so we can see it - using the say function, or we could analyze the output in the script. For example we could split up the output and put each value in a variable.

The Perl 6 Tricks and Treats newsletter has been around for a while. If you are interested to get special notification when there is new content on this site, it is the best way to keep track:

### 14.3 Unix commands in Perl 6

In shell script we don't usually read in a file to memory, instead we do several passes on the same file in order to extract data.

In a high-level language such as Perl 6 we can read in all the content of the file and have better ways to fetch verious pieces of information. This ease is of course only relevent for files that can fit into memory. If we have to deal with files larger than the free memory in the computer we cannot read all of it into memory so either we have to do several passes on a file or make our algorithm more clever.

### 14.5 cat

I shell scripts cat is usually used to read in a file to be processed by other tools in Perl 6 you can slurp in a file:

    my @rows = "data.txt".slurp;
    my @rows = slurp "data.txt";

but you can also read them as one sting:

    my $file = slurp "data.txt";

It is also used to its original purpose - to concatenate several files - UNIX: cat a.txt b.txt > new.txt

Perl 6:

    my $out = open "new.txt", :w err die "Could not open new.txt";
    $out.say("a.txt".slurp)

### 14.6 cd in Perl 6

chdir - changing the current working directory

## 15. Appendix

### 15.1 grok and AppGrok

grok is a command line tool written in Perl 5 that should be the 'perldoc' command of Perl 6. In Padre we are using it to display the Perl 6 documentation.

### 15.2 Using 3rd party Perl 6 modules

## see proto in Github

One of the best ways to learn Perl 6 is to read examples. There are two great places to fine Perl 6 examples. One of the is the test suit of Perl 6 that can is currently in the Pugs repository. The other one is a set of 3rd perty modules written in Perl 6. They are mostly hosted on Gihub and can be installed by proto.

In order to get started the first thing you need to do is to install proto. For this you need to a have a git client and type in the following command:

    $ git clone git://github.com/masak/proto.git

this will clone the git repository of protio to your computer.

proto is mostly written in Perl 6 with a bootstrap script that is written in Perl 5. If you don't have rakudo installed, the Perl 5 part of proto can do it for you before starting its Perl 6 part. Just cd in the proto/ directory that was created by the git clone command.

### 15.3 Timestamp and elapsed time in Perl 6

## Timestamp

Perl 6 provides two functions returning the number of seconds from the epoch (1970 January 1).

The now function returns an Instant object that holds the number of seconds since the epoch with a precision of up to 6 digits after the decimal point.

The time function returns the number of seconds since the epoch less the number of leap seconds. So in January 2015 now return 35 seconds more than time.

    use v6;

    my $now = now;
    my $time = time;

    say $now.Int - $time;    # 35
    Elapsed time in Perl 6

If you want to measure elapsed time of some code snippet, probably the best is to save the result of the now function at the two points in the execution: before the snippet and after the snippet and then take the difference of the two Instant objects resulting in a Duration object.

    use v6;

    my $start = now;

    some_call();

    my $end = now;

    my $elapsed = $end - $start;
    say $elapsed.WHAT;  # (Duration)
    say $elapsed;       # 0.007443

    sub some_call {
        my $x = rand;
        my $y = rand;
        my $z = $x + $y;
    }

### 15.4 Thanks

I'd like to thank the following people who helped writing the book and fixing issues.

    Ștefan Suciu
    Demian Riccardi
    Thomas Maier
    Andrew Pam
    Raiph Mellor

(end)
