# $Id: Association.pm,v 1.1.1.1 2003/12/18 21:18:30 sommerb Exp $

package Myco::Base::Association;

use base qw(Myco::Base::Common Class::Tangram);

our $schema = {
	       abstract => 1,
	       table => 'Association',
	       fields => {},
	      };

Class::Tangram::import_schema("Myco::Base::Association");

1;
