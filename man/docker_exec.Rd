% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docker.R
\name{docker_exec}
\alias{docker_exec}
\title{Run a command in a running container}
\usage{
docker_exec(host = harbor::localhost, container = NULL, command = NULL,
  args = NULL, docker_opts = NULL, capture_text = TRUE, ...)
}
\arguments{
\item{host}{docker host}

\item{container}{container object or name}

\item{command}{command to execute}

\item{args}{args passed to the container}

\item{docker_opts}{docker command options}

\item{capture_text}{capture text of output?}

\item{...}{passed to \link{docker_cmd}}
}
\description{
Run a command in a running container
}
