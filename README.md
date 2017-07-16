# NAME

Devel::IPerl::Plugin::Chart::Plotly - Inline display of plotly charts in Jupyter notebooks using [Devel::IPerl](https://metacpan.org/pod/Devel::IPerl) kernel

# VERSION

version 0.001

# SYNOPSIS

```perl
# In notebook
IPerl->load_plugin('Chart::Plotly');

use Chart::Plotly::Trace::Scatter;
use Chart::Plotly::Plot;
my $scatter_trace = Chart::Plotly::Trace::Scatter->new( x => [ 1 .. 5 ], y => [ 1 .. 5 ] );
my $plot = Chart::Plotly::Plot->new(traces => [$scatter_trace]);
```

# DESCRIPTION

Plugin to display automatically [Chart::Plotly](https://metacpan.org/pod/Chart::Plotly) plot objects in Jupyter notebooks using kernel [Devel::IPerl](https://metacpan.org/pod/Devel::IPerl)

# INSTANCE METHODS

## register

This method is called automatically by [Devel::IPerl](https://metacpan.org/pod/Devel::IPerl). You only need to load the plugin:

```
IPerl->load_plugin('Chart::Plotly');
```

# CLASS METHODS

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2017 by Pablo Rodríguez González.

This is free software, licensed under:

```
The MIT (X11) License
```
