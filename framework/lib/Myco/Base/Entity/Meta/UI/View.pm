package Myco::Base::Entity::Meta::UI::View;

###############################################################################
# $Id: View.pm,v 1.1.1.1 2003/12/18 21:18:31 sommerb Exp $
#
# See license and copyright near the end of this file.
###############################################################################

=head1 NAME

Myco::Base::Entity::Meta::UI::View - a Myco entity class

=head1 VERSION

$Revision: 1.1.1.1 $

=cut

our $VERSION = (qw$Revision: 1.1.1.1 $ )[-1];

=head1 DATE

$Date: 2003/12/18 21:18:31 $

=head1 SYNOPSIS

  use Myco;

  # Constructors. See Myco::Base::Entity for more.
  my $obj = Myco::Base::Entity::Meta::UI::View->new;

  # Accessors.
  my $value = $obj->get_fooattrib;
  $obj->set_fooattrib($value);

  $obj->save;
  $obj->destroy;

=head1 DESCRIPTION

Blah blah blah... Blah blah blah... Blah blah blah...
Blah blah blah blah blah... Blah blah...

=cut

##############################################################################
# Dependencies
##############################################################################
# Module Dependencies and Compiler Pragma
use warnings;
use strict;

##############################################################################
# Programatic Dependencies


##############################################################################
# Constants
##############################################################################


##############################################################################
# Inheritance
##############################################################################
use base qw(Class::Tangram);

##############################################################################
# Function and Closure Prototypes
##############################################################################


##############################################################################
# Constructor, etc.
##############################################################################

=head1 COMMON ENTITY INTERFACE

Constructor, accessors, and other methods -- as inherited from
Class::Tangram

=cut

##############################################################################
# Attributes & Attribute Accessors / Schema Definition
##############################################################################

=head1 ATTRIBUTES

Attributes may be initially set during object construction (with C<new()>) but
otherwise are accessed solely through accessor methods. Typical usage:

=over 3

=item *  Set attribute value

 $obj->set_attribute($value);

Check functions (see L<Class::Tangram|Class::Tangram>) perform data
validation. If there is any concern that the set method might be called with
invalid data then the call should be wrapped in an C<eval> block to catch
exceptions that would result.

=item *  Get attribute value

 $value = $obj->get_attribute;

=back

A listing of available attributes follows:

=cut

### Object Schema Definition
our $schema =
  {
   fields =>
    {
      transient =>
      { fields => {},
        layout => {},
      },
    }
  };

=head2 fields

 type: hash ref


=cut

=head2 layout

 type: array ref

=cut


##############################################################################
# Methods
##############################################################################

=head1 ADDED CLASS / INSTANCE METHODS

None

=cut


1;
__END__


=head1 LICENSE AND COPYRIGHT

Copyright (c) 2002 Eastern Nazarene College (ENC). All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

=over 4

=item 1.

Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

=item 2.

Redistributions in binary form must reproduce the above copyright notice, this
list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

=back

THIS SOFTWARE IS PROVIDED BY THE AUTHOR, ENC, AND CONTRIBUTORS "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE AUTHOR, ENC, OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=head1 AUTHORS

Charles Owens <owensc@enc.edu>

=head1 SEE ALSO

L<Myco::Base::Entity::Meta::UI::View::Test|Myco::Base::Entity::Meta::UI::View::Test>,
L<Myco::Base::Entity|Myco::Base::Entity>,
L<Myco|Myco>,
L<Tangram|Tangram>,
L<Class::Tangram|Class::Tangram>,
L<mkentity|mkentity>

=cut
