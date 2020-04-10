package Koha::Plugin::Fr::Bulac::Mannequin;

# Copyright (C) 2020 BULAC
#
# This file is part of Koha::Plugin::Fr::Bulac::Mannequin.
#
# Koha::Plugin::Fr::Bulac::Mannequin is free software; you can
# redistribute it and/or modify it under the terms of the GNU General
# Public License as published by the Free Software Foundation; either
# version 3 of the License, or (at your option) any later version.
#
# Koha::Plugin::Fr::Bulac::Mannequin is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Koha::Plugin::Fr::Bulac::Mannequin; if not, see <http://www.gnu.org/licenses>.

use Modern::Perl;

use base qw(Koha::Plugins::Base);

use C4::Context;
use C4::Auth;

our $VERSION = "0.0";

our $metadata = {
    name            => 'Mannequin',
    author          => 'Nicolas Legrand',
    date_authored   => '2020-03-27',
    date_updated    => "2020-03-27",
    minimum_version => '18.05.00.000',
    maximum_version => undef,
    version         => $VERSION,
    description     => 'Ceci est un mannequin de module externe pour essayer de comprendre les modules externes',

};

sub new {
    # entirely taken from
    # https://github.com/bywatersolutions/koha-plugin-kitchen-sink/blob/master/Koha/Plugin/Com/ByWaterSolutions/KitchenSink.pm
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);

    
    
    return $self;
}

sub tool {
    my ( $self, $args ) = @_;

    my $cgi = $self->{'cgi'};

    $self->tool_mannequin();
    
}

sub tool_mannequin {
    my ( $self, $args ) = @_;
    my $cgi = $self->{'cgi'};

    my $template = $self->get_template({ file => 'tool-mannequin.tt' });

    $self->output_html( $template->output() );
}

# sub uninstall {
#     my ( $self, $args ) = @_;
#     # Nothing to do right now...
#     1;
# }

1;
