% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_node_df.R
\name{create_node_df}
\alias{create_node_df}
\title{Create a node data frame}
\usage{
create_node_df(n, type = NULL, label = NULL, ...)
}
\arguments{
\item{n}{the total number of nodes to include in the
node data frame.}

\item{type}{an optional \code{type} for each
node.}

\item{label}{an optional \code{label} for each node.}

\item{...}{one or more vectors for associated node
attributes.}
}
\value{
a node data frame (ndf).
}
\description{
Combine several vectors for nodes
and their attributes into a data frame, which can be
combined with other similarly-generated data frames,
or, added to a graph object. A node data frame,
or ndf, has at least the following columns:

- \code{id} (of type \code{integer})

- \code{type} (of type \code{character})

- \code{label} (of type \code{character})

An arbitrary number of additional columns containing
aesthetic or data attributes can be part of the ndf,
so long as they follow the aforementioned columns.
}
\examples{
# Create a node data frame (ndf) where the labels
# are equivalent to the node ID values (this is not
# recommended); the `label` and `type` node
# attributes will always be a `character` class
# whereas `id` will always be an `integer`
node_df <-
  create_node_df(
    n = 4,
    type = c("a", "a", "b", "b"),
    label = TRUE)

# Display the node data frame
node_df
#>   id type label
#> 1  1    a     1
#> 2  2    a     2
#> 3  3    b     3
#> 4  4    b     4

# Create an ndf with distinct labels and
# additional node attributes (where their classes
# will be inferred from the input vectors)
node_df <-
  create_node_df(
    n = 4,
    type = "a",
    label = c(2384, 3942, 8362, 2194),
    style = "filled",
    color = "aqua",
    shape = c("circle", "circle",
              "rectangle", "rectangle"),
    value = c(3.5, 2.6, 9.4, 2.7))

# Display the node data frame
node_df
#>   id type label  style color     shape value
#> 1  1    a  2384 filled  aqua    circle   3.5
#> 2  2    a  3942 filled  aqua    circle   2.6
#> 3  3    a  8362 filled  aqua rectangle   9.4
#> 4  4    a  2194 filled  aqua rectangle   2.7
}
