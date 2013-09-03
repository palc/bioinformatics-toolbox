# Interface for creating Garli trees
#
# Copyright (c) 2013, Bryan White

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
use strict;
use warnings;

use Exporter;

our @ISA= qw( Exporter );
our @EXPORT_OK = qw( 	write_garli_config
						);

sub write_garli_config {
	# Import Garli parameters and write them to a config file
	# Default parameters, import modified params at end via @_
	my %garli_params = (		
		config => 'default.config',
		# [general]
		datafname => 'rana.nex',
		constraintfile => 'none',
		streefname => 'stepwise',
		attachmentspertaxon => 50,
		ofprefix => 'rana.nuc.GTRIG',
		randseed => -1,
		availablememory => 512,
		logevery => 10,
		saveevery => 100,
		refinestart => 1,
		outputeachbettertopology => 0,
		outputcurrentbesttopology => 0,
		enforcetermconditions => 1,
		genthreshfortopoterm => 20000,
		scorethreshforterm => 0.05,
		significanttopochange => 0.01,
		outputphyliptree => 1,
		outputmostlyuselessfiles => 0,
		writecheckpoints => 0,
		restart => 0,
		outgroup => 1,
		resampleproportion => 1.0,
		inferinternalstateprobs => 0,
		outputsitelikelihoods => 0,
		optimizeinputonly => 0,
		collapsebranches => 1,

		searchreps => 1,
		bootstrapreps => 0,

		# [model1]
		datatype => 'nucleotide',
		ratematrix => '6rate',
		statefrequencies => 'estimate',
		ratehetmodel => 'gamma',
		numratecats => 4,
		invariantsites => 'estimate',

		# [master]
		nindivs => 4,
		holdover => 1,
		selectionintensity => 0.5,
		holdoverpenalty => 0,
		stopgen => 5000000,
		stoptime => 5000000,

		startoptprec => 0.5,
		minoptprec => 0.01,
		numberofprecreductions => 10,
		treerejectionthreshold => 50.0,
		topoweight => 1.0,
		modweight => 0.05,
		brlenweight => 0.2,
		randnniweight => 0.1,
		randsprweight => 0.3,
		limsprweight =>  0.6,
		intervallength => 100,
		intervalstostore => 5,
		limsprrange => 6,
		meanbrlenmuts => 5,
		gammashapebrlen => 1000,
		gammashapemodel => 1000,
		uniqueswapbias => 0.1,
		distanceswapbias => 1.0,
		@_
	);
	open(GARLI_CONF, '>'.$garli_params{'config_path'});
print GARLI_CONF "[general]
datafname = $garli_params{'datafname'}
	
	# close(GARLI_CONF);
	# for my $key ( keys %garli_params ) {
		# if ($key ne 'config_path') {
			# print GARLI_CONF $key.' = '.$garli_params{$key}."\n";
		# }
	# }
}

sub check_garli_copied {
	my %check_params = (
		garli_path => '',
		new_garli_path => ''
	);
	print $check_params{'garli_path'}."\n";
	print $check_params{'new_garli_path'}."\n";
	
}