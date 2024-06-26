# GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug)
  prj_raylib_starter_config = debug
endif
ifeq ($(config),release)
  prj_raylib_starter_config = release
endif

PROJECTS := prj_raylib_starter

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

prj_raylib_starter:
ifneq (,$(prj_raylib_starter_config))
	@echo "==== Building prj_raylib_starter ($(prj_raylib_starter_config)) ===="
	@${MAKE} --no-print-directory -C . -f prj_raylib_starter.make config=$(prj_raylib_starter_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f prj_raylib_starter.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug"
	@echo "  release"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   prj_raylib_starter"
	@echo ""
	@echo "For more information, see https://github.com/premake/premake-core/wiki"