% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBI.R
\docType{methods}
\name{dbListTables,DatabaseConnectorConnection-method}
\alias{dbListTables,DatabaseConnectorConnection-method}
\title{List remote tables}
\usage{
\S4method{dbListTables}{DatabaseConnectorConnection}(conn, database = NULL,
  schema = NULL, ...)
}
\arguments{
\item{conn}{A \linkS4class{DBIConnection} object, as returned by
\code{\link[=dbConnect]{dbConnect()}}.}

\item{database}{Name of the database.}

\item{schema}{Name of the schema.}

\item{...}{Other parameters passed on to methods.}
}
\value{
\code{dbListTables()}
returns a character vector
that enumerates all tables
and views
in the database.
Tables added with \code{\link[=dbWriteTable]{dbWriteTable()}}
are part of the list,
including temporary tables if supported by the database.
As soon a table is removed from the database,
it is also removed from the list of database tables.

The returned names are suitable for quoting with \code{dbQuoteIdentifier()}.
An error is raised when calling this method for a closed
or invalid connection.
}
\description{
Returns the unquoted names of remote tables accessible through this
connection.
This should include views and temporary objects, but not all database backends
(in particular \pkg{RMariaDB} and \pkg{RMySQL}) support this.

\Sexpr[results=rd,stage=render]{DBI:::methods_as_rd("dbListTables")}
}
\seealso{
Other DBIConnection generics: \code{\link{DBIConnection-class}},
  \code{\link{dbAppendTable}}, \code{\link{dbCreateTable}},
  \code{\link{dbDataType}}, \code{\link{dbDisconnect}},
  \code{\link{dbExecute}}, \code{\link{dbExistsTable}},
  \code{\link{dbGetException}}, \code{\link{dbGetInfo}},
  \code{\link{dbGetQuery}}, \code{\link{dbIsReadOnly}},
  \code{\link{dbIsValid}}, \code{\link{dbListFields}},
  \code{\link{dbListObjects}}, \code{\link{dbListResults}},
  \code{\link{dbReadTable}}, \code{\link{dbRemoveTable}},
  \code{\link{dbSendQuery}}, \code{\link{dbSendStatement}},
  \code{\link{dbWriteTable}}
}
