Lucid Build Tools
=====

The Lucid Build toolset wraps the customized Arch Linux devtools to allow a much nicer interface to the build environment. It allows for recursive building and automatic staging of the build environment depending the parameters passed to the command.

Completed Features:
=====

-A config file.

-A multi purpose clean/create build root environment flag. If you try to create a new build root without cleaning it will error out. Whenever you clean the build root you need to recreate it so these two functions go hand in hand.

Future features (in no particular order):
=====

-The ability to log which compiles succeed and fail.

-A variety of PKGBUILD scanning features:

    -Verify hyperlink states.

    -Check which architectures the packages can be built for and build for the appropriate ones.

    -Check for upstream updates directly from the sources.

        -Potentially work in either interactive or automated update mode.

    -Check for errors and offer suggestions on how to fix the errors.

        -Potentially fix errors automatically.

-Scan the package repository to see if the program needs to be updated or not.

-Dynamically build the different repositories instead of having to specify.

    -Make lb know which repository it is compiling in without having to be passed a flag.
