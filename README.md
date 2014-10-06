lucid
=====

Lucid OS Repository

--- We are currently in the early development stages. ---

This is where all the PKGBUILDS and tools will reside for the Lucid OS Linux distribution.

Lucid OS will be an independent Linux distribution that uses tools primarily from both Arch Linux and Manjaro.

We follow the kiss principle from not only one but multiple perspectives. Having a system that is equally as easy for the developer as it is the user is an important aspect of the kiss principle and this is our goal.

The official Lucid OS builds will be built with ease of use, functionality, productivity and quality in mind.

Only working repositories of PKGBUILDS get synced into master, If you're wondering about our current development then check out the merged-repo branch.

If you are wondering how our development team uses git then check out the [doc branch](https://github.com/edge226/lucid/tree/doc). Which will eventually contain much more documentation on various aspects of the project.

The initial roadblock we hit was how do we build packages and how do we build the packages for an entire repository. I have not looked at building entire repository structures yet because even a single repository contained a lot of testing that needed to be done for the entire
process to work correctly. That can be implemented once the other features are required so in all intents and purposes at this stage in development that is completed.

Another roadblock that we hit was that checking links took too long. So I designed a way to be able to verify the validity of the links used within building a PKGBUILD. The output can be dynamic to a file where you measure the success of the command to know whether all links are downloadable. This also checks whether a file exists if one is supposed to locally.

I designed a test case of algorithms that could be used to resolve issues where moving files would cause errors of no files matched the given  parameters. It operates in a very simple diff manner and again does not operate recursively. Although I do not see making it do so be difficult I do not see it as required at this time either.

The roadblock currently in progress(90+% complete) is a way to scan all dependency information sorted into a directory tree. The program I created does not operate recursively. It creates a directory tree of the single PKGBUILD file. It accepts operating in a nested manner through a system I choose to call the origin system. It tracks the depends, makedepends, checkdepends, optdepends, origin and pwd of the PKGBUILD being scanned.

I will probably design some algorithms to allow searches within the base repository. This program will be able to scan all PKGBUILD files and do an action in relation to the entire PKGBUILD set. It will also be able to scan for specific PKGBUILD files to gather information on PKGBUILD files in 
