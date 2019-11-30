package Devel::IPerl::Plugin::Chart::PlotlyPod;

use strict;
use warnings;
use utf8;

# VERSION

# ABSTRACT: Inline display of plotly charts in Jupyter notebooks using L<Devel::IPerl> kernel

=encoding utf8

=head1 SYNOPSIS

    # In notebook
    IPerl->load_plugin('Chart::Plotly');

    # Trace objects get displayed automatically
    use Chart::Plotly::Trace::Scatter;
    my $scatter_trace = Chart::Plotly::Trace::Scatter->new( x => [ 1 .. 5 ], y => [ 1 .. 5 ] );

    # Also Plot objects
    use Chart::Plotly::Trace::Box;
    use Chart::Plotly::Plot;

    my $x = [ 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3 ];
    my $box1 = Chart::Plotly::Trace::Box->new( x => $x, y => [ map { rand() } ( 1 .. ( scalar(@$x) ) ) ], name => "box1" );
    my $box2 = Chart::Plotly::Trace::Box->new( x => $x, y => [ map { rand() } ( 1 .. ( scalar(@$x) ) ) ], name => "box2" );
    my $plot = Chart::Plotly::Plot->new( traces => [ $box1, $box2 ], layout => { boxmode => 'group' } );

=head1 DESCRIPTION

Plugin to display automatically L<Chart::Plotly> plot objects in L<Jupyter notebooks|https://jupyter.org/> using kernel L<Devel::IPerl>

The example above can be viewed in L<nbviewer|https://nbviewer.jupyter.org/github/pablrod/p5-Chart-Plotly/blob/master/examples/jupyter-notebooks/BasicUse.ipynb>

This plugin is now integrated with L<Chart::Plotly> and this package is just a placeholder for backwards compatibility.

The repo can be found on L<Chart::Plotly Github|https://github.com/pablrod/p5-Chart-Plotly>

=cut

1;
