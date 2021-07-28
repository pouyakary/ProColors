
#
#	Make sure you have a .env file with the variable
#	"PRO_COLORS_TEST_PATH" set to the directory in which
# 	you wish to copy the build files into
#

include .env
export $(shell sed 's/=.*//' .env)

BUILD_FOLDER=pro-colors.themeX/builds/sublime

test: copy-to-test

copy-to-test: compile karyprocolors-dark.tmTheme karyprocolors-light.tmTheme karyprocolors-minimaldark.tmTheme

%.tmTheme:
	cp -f $(BUILD_FOLDER)/$*.tmTheme $(PRO_COLORS_TEST_PATH)/$*.tmTheme

compile:
	themex pro-colors.themeX