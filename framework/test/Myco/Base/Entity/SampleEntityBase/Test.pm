package Myco::Base::Entity::SampleEntityBase::Test;

###############################################################################
# $Id: Test.pm,v 1.2 2003/12/19 21:52:10 sommerb Exp $
#
# See license and copyright near the end of this file.
###############################################################################

=head1 NAME

Myco::Base::Entity::SampleEntityBase::Test -

unit tests for features of Myco::Base::Entity::SampleEntityBase

=head1 VERSION

$Revision: 1.2 $

=cut

our $VERSION = (qw$Revision: 1.2 $ )[-1];

=head1 DATE

$Date: 2003/12/19 21:52:10 $

=head1 SYNOPSIS

 cd $MYCO_DISTRIB/bin
 # run tests.  '-m': test just in-memory behavior
 ./testrun [-m] Myco::Base::Entity::SampleEntityBase::Test
 # run tests, GUI style
 ./tktestrun Myco::Base::Entity::SampleEntityBase::Test

=head1 DESCRIPTION

Unit tests for features of Myco::Base::Entity::SampleEntityBase.

=cut

### Inheritance
use base qw(Test::Unit::TestCase Myco::Test::EntityTest);

### Module Dependencies and Compiler Pragma
use Myco::Base::Entity::SampleEntityBase;
use strict;
use warnings;

### Class Data

# This class tests features of:
my $class = 'Myco::Base::Entity::SampleEntityBase';

my %test_parameters =
  ###  Test Control Prameters ###
  (
   # A scalar attribute that can be used for testing... set to undef
   #    to disable related tests
   simple_accessor => 'heybud',

   skip_persistence => 1,     # skip persistence tests?  (defaults to false)

   # Default attribute values for use when constructing objects
   #    Needed for any 'required' attributes
   defaults =>
       {
#	name => 'a value',
	# Use a coderef to auto-instantiate sub-objects for ref-type attributes
#	type => sub {
#                   my $test = shift;
#	            my $foo = Myco::Base::Entity::SampleEntityBase->new(name => 'bar');
#	            # Make sure sub-object gets removed after test
#		    $test->destroy_upon_cleanup($foo);
#		    $foo;
#		},
       },
  );


###
### Unit Tests for Myco::Base::Entity::SampleEntityBase
###

##
##   Tests for In-Memory Behavior


##
##   Tests for Persistence Behavior

# sub test_bar {
#     my $test = shift;
#     $test->set_type_persistence(1);  # note that this test uses persistence
#     return if $test->should_skip;    # skip over this test if asked
#
#     $test->assert( __something__, "no can-do");
#
#     # Use the following to have Entity objects auto-deleted after
#     # test is run
#     $test->destroy_upon_cleanup($obj);
# }

### Hooks into Myco test framework

sub new {
    my $testclass = shift;
    # create fixture object and handle related needs (esp. DB connection)
    my $test = $testclass->init_fixture(@_);
    $test->set_class($class);
    $test->set_params(\%test_parameters);
    return $test;
}

sub set_up {
    my $test = shift;
    $test->help_set_up(@_);
}

sub tear_down {
    my $test = shift;
    $test->help_tear_down(@_);
}

1;

=cut

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2004 the myco project. All rights reserved.
This software is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.



=head1 SEE ALSO

L<Myco::Base::Entity::SampleEntityBase|Myco::Base::Entity::SampleEntityBase>,
L<Myco::Test::EntityTest|Myco::Test::EntityTest>,
L<testrun|testrun>,
L<tktestrun|tktestrun>,
L<Test::Unit::TestCase|Test::Unit::TestCase>,
L<mkentity|mkentity>
