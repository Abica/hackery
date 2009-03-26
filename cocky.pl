#!/usr/bin/perl
use warnings;use strict;no strict 'vars';my $s = "sub";my $n1 = 1;my $n2 = 2;
my $cv = "foreach";my $lb = "{";my $rb = "}";my $rp = "(";my $lp = ")";
eval("$s a {$n1 + $n2}");eval("$s b {$n1 / $n2}");eval("$s c {$n2 * $n2}");
eval("$s d {$n1 - $n2}");eval("$s e {$n1}");eval("$s f {$n2}");my $sc = ";";

          $_ = [(c()     *c()*
     c()+e())    ,(c()*c()*    c()+f()),
 (((c()+    e())*c())*    (a()+e())
 - (c()*    f() - f()+    e())),(c()
        *c()*c()    +e()+f()),    (c()*c()*
c()+e()),                    (c()*c()      *f()),(((        c()+e())*c())
          *(a()+e()) - (c()*f() -          f()+e())),(((c()
+e())*c())*(a()+      e())+(f()+e())),      (c()*c()
*f()),(c()*c()           *c()                   +e()),         (((c()+e())*c())
           *(a()+e())+                    (f()+e()) - (e()+f()+f()+e())),
(c()*    c()*c()+e()),       (((       c()+e()    )*c()
        )*(    a()+e())+     (f()+e())+(e()+    (f()*
(f()   +e())))),                       (((c()+e())*c()    )*(a()
            +e())                              - (c()
*f() -                             f()+
         e())),                           (((c()
   +e())*c())*(a()+e())         +(f()+e()) - (e()
+f()+f())),       (((c()+e())     *c())*(a()+         e())
       - (c()*f() -                    f()  +e()+f())),               (c()*c()
  *f()+e())];foreach my $b  (@$_){print chr($b);      };print "\n";