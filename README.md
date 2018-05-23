# Eval Tracing Experiment

This is a repository of the experimental setup for tracing eval in R.

It runs [evaldyntracer](https://github.com/PRL-PRG/evaldyntracer) with our instrumented R interpreter, [R-dyntrace](https://github.com/PRL-PRG/R-dyntrace), on vignettes, examples and test cases extracted from installed R packages.


## Administration

All the experimental steps are controlled from a top level `Makefile`. 
Every experimental step is a make rule.

### Setup

To clone the latest stable version of `R-dyntrace` and `evaldyntracer`
and to install all the dependencies needed for the scripts in this
repository, run -

```
$ make setup [RDYNTRACE_DIRECTORY = <r-dyntrace-project-directory>] 
             [EVALDYNTRACER_DIRECTORY = <evaldyntracer-project-directory>]
             [VANILLA_R = <vanilla-r-executable>]
```

### Update

To update the cloned repositories `R-dyntrace` and `evaldyntracer`, run -

```
$ make update [RDYNTRACE_DIRECTORY = <r-dyntrace-project-directory>] 
              [EVALDYNTRACER_DIRECTORY = <evaldyntracer-project-directory>]
              [R_DYNTRACE_PULL_FLAGS = <git-pull flags for pulling R-dyntrace>]
              [EVALDYNTRACER_PULL_FLAGS = <git-pull flags for pulling evaldyntracer>]
```
### Trace

To trace eval on packages, run -

```
$ make trace
```

### Analyze

To analyze the tracing output, run -

```
$ make analyze
```

## Development

If you are a developer, fork the project and make changes to your copy. After you are done making changes, 
push to your fork and send a pull request. Make sure all the make rules finish with expected output.
