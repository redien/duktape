#
#  Some compilation examples for ROM strings/objects
#

set -e

# Run dist manually, ROM support is not enabled by default so add --rom-support.
# User builtin metadata can be provided through one or more YAML files (applied
# in sequence).
make clean
python util/make_dist.py \
	--rom-support \
	--user-builtin-metadata util/example_user_builtins1.yaml \
	--user-builtin-metadata util/example_user_builtins2.yaml \
	--minify closure

# Run genconfig.py and create a custom duk_config.h with ROM support etc.
python config/genconfig.py \
	--metadata config \
	--output dist/src/duk_config.h \
	-DDUK_USE_ROM_STRINGS \
	-DDUK_USE_ROM_OBJECTS \
	-DDUK_USE_ROM_GLOBAL_INHERIT \
	-DDUK_USE_DEBUG -DDUK_USE_DPRINT -DDUK_USE_ASSERTIONS \
	autodetect-header
cp dist/src/duk_config.h dist/src-separate/
#gcc -std=c99 -Wall -Wextra -Os -Idist/src-separate/ -Idist/examples/cmdline dist/src-separate/*.c dist/examples/cmdline/duk_cmdline.c -o _duk -lm
make duk dukd

# Ajduk depends on 'make ajduk' and uses DUK_OPT_xxx feature options.
# This would ideally be done directly using genconfig.py without
# --support-feature-options by moving the options into a genconfig
# YAML config file.
python config/genconfig.py \
	--metadata config \
	--output dist/src/duk_config.h \
	-DDUK_USE_ROM_STRINGS \
	-DDUK_USE_ROM_OBJECTS \
	-DDUK_USE_ROM_GLOBAL_INHERIT \
	--support-feature-options \
	autodetect-header
cp dist/src/duk_config.h dist/src-separate/
#gcc -std=c99 -Wall -Wextra -Os -Idist/src-separate/ -Idist/examples/cmdline dist/src-separate/*.c dist/examples/cmdline/duk_cmdline.c -o _duk -lm
make ajduk
