#
# Myco Makefile
#
# Supports the following targets:
#
#   install   - installs the Myco system
#
# See INSTALL for details.
#

# Set the location of Perl.
PERL = /usr/local/bin/perl
# and make
MAKE = /usr/local/bin/gmake









#########################
# build rules           #
#########################


build_done	: modules.db
	@echo
	@echo ===========================================================
	@echo ===========================================================
	@echo 
	@echo Perl modules installed. Now type \"make install\" as root.
	@echo 
	@echo ===========================================================
	@echo ===========================================================
	@echo

modules.db 	: inst/modules.pl
	env PERL5LIB=lib $(PERL) inst/modules.pl
	$(PERL) inst/cpan.pl


##########################
# installation rules     #
##########################

install         : lib

lib             :
#	-rm -f lib/Makefile
	cd lib; $(PERL) Makefile.PL; $(MAKE) install