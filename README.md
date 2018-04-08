# NAME

Devel::IPerl::Plugin::Chart::Plotly - Inline display of plotly charts in Jupyter notebooks using [Devel::IPerl](https://metacpan.org/pod/Devel::IPerl) kernel

# VERSION

version 0.005

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

Plugin to display automatically [Chart::Plotly](https://metacpan.org/pod/Chart::Plotly) plot objects in Jupyter notebooks using kernel [Devel::IPerl](https://metacpan.org/pod/Devel::IPerl)

The example above can be viewed in [nbviewer](http://nbviewer.jupyter.org/github/pablrod/p5-Devel-IPerl-Plugin-Chart-Plotly/blob/master/examples/PlotlyPlugin.ipynb)

# INSTANCE METHODS

## register

This method is called automatically by [Devel::IPerl](https://metacpan.org/pod/Devel::IPerl). You only need to load the plugin:

```
IPerl->load_plugin('Chart::Plotly');
```

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018 by Pablo Rodríguez González.

This is free software, licensed under:

```
The MIT (X11) License
```

# CONTRIBUTOR

Roy Storey <kiwiroy@users.noreply.github.com>
