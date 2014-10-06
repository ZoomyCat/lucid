lucid
=====

Lucid OS Repository

--- We are currently in the early development stages. ---

This is where all the PKGBUILDS and tools will reside for the Lucid OS Linux distribution.

Lucid OS will be an independent Linux distribution that uses tools primarily from both Arch Linux and Manjaro.

We follow the kiss principle from not only one but multiple perspectives. Having a system that is equally as easy for the developer as it is the user is an important aspect of the kiss principle and this is our goal.

The official Lucid OS builds will be built with ease of use, functionality, productivity and quality in mind.

Only working repositories of PKGBUILDS get synced into master, If you're wondering about our current development then check out the merged-repo branch. Basically once the lbf framework goes live and is functional then you will probably see the start of something new coming into here.

If you are wondering how our development team uses git then check out the [doc branch](https://github.com/edge226/lucid/tree/doc). Which will eventually contain much more documentation on various aspects of the project.

lucid-build and lbf
=====

lucid-build
=====

So lucid-build came first and it was geared at compiling a large number of packages and creating a usable repository. I was delving further into bash than I ever had with any other project. I hit a hurdle on the development too many things depended on a single program.
That is when lbf was started with intention to create a better operational framework that worked in a more modular way. The functionality
that was in the lucid-build branch is only a small part to come.

lbf
=====

The initial roadblock we hit was how do we build packages and how do we build the packages for an entire repository. I have not looked at building entire repository structures yet because even a single repository contained a lot of testing that needed to be done for the entire
process to work correctly. That can be implemented once the other features are required so in all intents and purposes at this stage in development that is completed. This stage was lucid-build. It has some buggy functionality that is going to be fixed in lfb. It is not capable of building packages in a particular order and simply mass builds the packages. It does nicely stage a single repository for you though. A lot of this functionality is going to be broken up into more friendly to use algorithms.

Another roadblock that we hit was that checking links took too long. So I designed a way to be able to verify the validity of the links used within building a PKGBUILD. The output can be dynamic to a file where you measure the success of the command to know whether all links are downloadable. This also checks whether a file exists if one is supposed to locally.

I designed a test case of algorithms that could be used to resolve issues where moving files would cause errors of no files matched the given  parameters. It operates in a very simple diff manner and again does not operate recursively. Although I do not see making it do so be difficult I do not see it as required at this time either.

The roadblock currently in progress(90+% complete) is a way to scan all dependency information sorted into a directory tree. The program I created does not operate recursively. It creates a directory tree of the single PKGBUILD file. It accepts operating in a nested manner through a system I choose to call the origin system. It tracks the depends, makedepends, checkdepends, optdepends, origin and pwd of the PKGBUILD being scanned.

I will design some algorithms to deal with redundancy in a way that allows searching within the base repository. This program will be able to scan all PKGBUILD files and do an action in relation to the entire PKGBUILD set. It will also be able to scan for specific PKGBUILD files to gather information or complete a task. 

The largest benefit I can see at the moment to having a good searching algorithm would be the capability to gather and process data in dynamic ways that allows more informative methods of determining how the main repositories should be split up. Other useful functions could be to mass build your PKGBUILD files or perhaps in a specific order for bootstrapping purposes.  Also doing a mass verification of links would be useful.


