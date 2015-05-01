use v6;

my $fh = open q<The.Perl.Maven's.Perl.6.Tutorial.md>;
my $pos = 1;
my $num = 1;
for $fh.lines -> $line {
    next if $line ~~ /^ $/;
    if $line ~~ /^(\d+)\.\s/ {
        $pos = +$0;
        $num = 1;
        say $line;
    }
    elsif $line ~~ /^\S/ {
        my $new-line = "$pos.$num $line";
        $num++;
        say $new-line;
    }
}

