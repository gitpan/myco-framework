package Myco::Query;

###############################################################################
# $Id: Query.pm,v 1.1.1.1 2003/12/18 21:18:29 sommerb Exp $
###############################################################################

=head1 NAME

Myco::Query - a Myco entity class

=head1 VERSION

$Revision: 1.1.1.1 $

=cut

our $VERSION = (qw$Revision: 1.1.1.1 $ )[-1];

=head1 DATE

$Date: 2003/12/18 21:18:29 $

=head1 SYNOPSIS

  use Myco::Query;

  # Constructors. See Myco::Base::Entity for more.
  my $obj = Myco::Query->new;

  # Accessors.
  my $value = $obj->get_fooattrib;
  $obj->set_fooattrib($value);

  $obj->save;
  $obj->destroy;

=head1 DESCRIPTION

A class to prepare and store Tangram Query objects used to generate lists.

=cut

##############################################################################
# Dependencies
##############################################################################
# Module Dependencies and Compiler Pragma
use warnings;
use strict;
use Myco::Exceptions;
use CGI;


##############################################################################
# Inheritance & Introspection
##############################################################################
use base qw( Myco::Base::Entity
             Myco::QueryTemplate );
my $md = Myco::Base::Entity::Meta->new
  ( name => __PACKAGE__,
    tangram => { table => 'query', },
    ui => {
           displayname => sub { shift->get_name },
           list => {
                    layout => [ qw(__DISPLAYNAME__) ],
                   },
          },
  );

##############################################################################
# Object Schema Activation and Metadata Finalization
##############################################################################
$md->activate_class;

1;
__END__
