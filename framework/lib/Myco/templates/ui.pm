#
# $Id: ui.pm,v 1.1.1.1 2003/12/18 21:18:30 sommerb Exp $

package Myco::UI::Foo;

sub new {
    my $class = shift;
    return bless { @_ }, $class;
}

1;

