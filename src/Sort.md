 # sort words by a sort order defined in a hash:
 say sort { %rank{$_} }, 'a'..'d';

 # sort case-insensitively
 say sort { .lc }, @words;

 my @sorted-numerically = sort +*, @list;
