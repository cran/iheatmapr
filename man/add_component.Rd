% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R
\docType{methods}
\name{add_component}
\alias{add_component}
\alias{add_annotation,Iheatmap,IheatmapAnnotation-method}
\alias{add_axis,IheatmapHorizontal,IheatmapX-method}
\alias{add_axis,IheatmapHorizontal,IheatmapY-method}
\alias{add_axis,IheatmapVertical,IheatmapX-method}
\alias{add_axis,IheatmapVertical,IheatmapY-method}
\alias{add_colorbar,Iheatmap,ContinuousColorbar-method}
\alias{add_colorbar,Iheatmap,DiscreteColorbar-method}
\alias{add_plot,Iheatmap,IheatmapPlot-method}
\alias{add_shape,Iheatmap,IheatmapShape-method}
\alias{add_axis}
\alias{add_colorbar}
\alias{add_plot}
\alias{add_shape}
\alias{add_annotation}
\title{Adding plot components to iheatmapr}
\usage{
add_axis(p, new_axis, ...)

add_colorbar(p, new_colorbar, ...)

add_plot(p, new_plot, ...)

add_shape(p, new_shape, ...)

add_annotation(p, new_anno, ...)
}
\arguments{
\item{p}{\code{\link{Iheatmap-class}} object}

\item{new_axis}{new \code{\link{IheatmapAxis-class}} object}

\item{new_colorbar}{new \code{\link{IheatmapColorbar-class}} object}

\item{new_plot}{new \code{\link{IheatmapPlot-class}} object}

\item{new_shape}{new \code{\link{IheatmapShape-class}} object}

\item{new_anno}{new \code{\link{IheatmapAnnotation-class}} object}
}
\description{
These are generic methods for adding new plot components to an 
\code{link{Iheatmap-class}} object. Not intended for end users; exported for
developers seeking to create new Iheatmap subplots.
}
\keyword{internal}
