This build tool interfaces with devtools. It is complete awesomeness.

Things in bin are meant to be interfaced with either automatically or
manually if required. These things should be put in /usr/bin.

Things in conf are config files to be put in /etc/lb/ and are currently hardcoded to only operate correctly if placed in the correct directory.

Things in lib are to be placed in /var/lib/lucid and are only meant to be interfaced by the other programs. They items generally will be documented within the code and will not contain any usage information or help file if directly. They will probably fail in some manner if you interface with it directly.

If you get odd permissions issues make sure the files have executable properties by running chmod a+x on the executables and then move them.

Check the help for usage and run as desired. The command is written for developers in mind so it is as short as possible to get what you need done.
