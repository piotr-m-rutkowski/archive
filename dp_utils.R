# Reusable helpers for DP practice scripts.

#' Simple memoization wrapper using an environment as a hash map.
#' Keys must be coercible to character via as.character().
memoize <- function(f) {
  cache <- new.env()
  function(...) {
    key <- paste(as.character(list(...)), collapse = "_")
    if (is.null(cache[[key]])) {
      cache[[key]] <- f(...)
    }
    cache[[key]]
  }
}
