# NAME

Devel::IPerl::Plugin::Chart::PlotlyPod - Inline display of plotly charts in Jupyter notebooks using [Devel::IPerl](https://metacpan.org/pod/Devel%3A%3AIPerl) kernel

# SYNOPSIS

```perl
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
```

# DESCRIPTION

Plugin to display automatically [Chart::Plotly](https://metacpan.org/pod/Chart%3A%3APlotly) plot objects in [Jupyter notebooks](https://jupyter.org/) using kernel [Devel::IPerl](https://metacpan.org/pod/Devel%3A%3AIPerl)

The example above can be viewed in [nbviewer](https://nbviewer.jupyter.org/github/pablrod/p5-Chart-Plotly/blob/master/examples/jupyter-notebooks/BasicUse.ipynb)

This plugin is now integrated with [Chart::Plotly](https://metacpan.org/pod/Chart%3A%3APlotly) and this package is just a placeholder for backwards compatibility.

The repo can be found on [Chart::Plotly Github](https://github.com/pablrod/p5-Chart-Plotly)

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2019 by Pablo Rodríguez González.

This is free software, licensed under:

```
The MIT (X11) License
```

# CONTRIBUTOR

Roy Storey <kiwiroy@users.noreply.github.com>
