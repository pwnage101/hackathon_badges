#
# Simply run `make`
#

default : check build/hackathon_badges_12in_x_7in_profile.svg build/hackathon_badges_12in_x_7in_text.svg

check:
	inkscape --version

build/hackathon_badges%_profile.svg : hackathon_badges%.svg
	mkdir build || echo "build/ already exists, not creating directory"
	cp "$<" "$@.tmp.svg"
	inkscape --select=text_group --verb EditDelete --verb FileSave --verb FileClose "$@.tmp.svg"
	rm "$@" || echo "not removing file, perhaps it does not exist: $@"
	inkscape --without-gui --export-plain-svg="$@" "$@.tmp.svg"
	rm "$@.tmp.svg" || echo "not removing file, perhaps it does not exist: $@.tmp.svg"
	test -f "$@" && echo "BUILD SUCCEEDED: $@"

build/hackathon_badges%_text.svg : hackathon_badges%.svg
	mkdir build || echo "build/ already exists, not creating directory"
	cp "$<" "$@.tmp.svg"
	inkscape --select=profile --verb EditDelete --verb FileSave --verb FileClose "$@.tmp.svg"
	rm "$@" || echo "not removing file, perhaps it does not exist: $@"
	inkscape --without-gui --export-plain-svg="$@" "$@.tmp.svg"
	rm "$@.tmp.svg" || echo "not removing file, perhaps it does not exist: $@.tmp.svg"
	test -f "$@" && echo "BUILD SUCCEEDED: $@"

.PHONY : check
