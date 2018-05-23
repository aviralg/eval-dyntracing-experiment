R_DYNTRACE_DIRECTORY = R-dyntrace
EVALDYNTRACER_DIRECTORY = evaldyntracer
VANILLA_R = R
R_DYNTRACE_PULL_FLAGS =
EVALDYNTRACER_PULL_FLAGS =
R_DYNTRACE_BUILD_COMMAND = cd $(R_DYNTRACE_DIRECTORY); ./build
EVALDYNTRACER_BUILD_COMMAND = $(R_DYNTRACE_DIRECTORY)/bin/R CMD INSTALL --build --with-keep.source $(EVALDYNTRACER_DIRECTORY)

setup:
	git clone git://github.com/PRL-PRG/R-dyntrace.git ${R_DYNTRACE_DIRECTORY}
	$(R_DYNTRACE_BUILD_COMMAND)
	git clone git://github.com/PRL-PRG/evaldyntracer.git $(EVALDYNTRACER_DIRECTORY)
	$(EVALDYNTRACER_BUILD_COMMAND)
	$(VANILLA_R) --file=scripts/install-dependencies.R

update:
	git pull $(R_DYNTRACE_PULL_FLAGS) $(R_DYNTRACE_DIRECTORY)
	$(R_DYNTRACE_BUILD_COMMAND)
	git pull $(EVALDYNTRACER_PULL_FLAGS) $(EVALDYNTRACER_DIRECTORY)
	$(EVALDYNTRACER_BUILD_COMMAND)

trace:
	@echo "Rule 'trace' not implemented yet!"

analyze:
	@echo "Rule 'analyze' not implemented yet!"

.PHONY: setup update trace analyze
