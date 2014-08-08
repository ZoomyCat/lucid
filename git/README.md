Lucid Documentation
=====

I expect this document to require to be split into multiple other documents. For now this is just a mind dump to get everything clear then it will be sorted later.

Git
=====

This is how our git workflow is currently. Everything that needs to be a branch is a branch and things that do not need to be a branch are not. A general overview is available as follows, later on we will touch with more detail the design descisions and why things are done the way they are done. Things could also change if the design is decided to be improved upon.

master
=====

This branch contains the content that we have verified works and is up to an appropriate quality standard. You can trust this branch to be able to build something that works.

*-repo
=====

This could be a variety of repositories that could be testing repositories for new content, be nearing a push into master or be completely unstable and being worked.

We do our best to make repository branches with names that would make sense to other people as well as ourselves. An example of a branch fitting this description that may or may not exist at this point in time is the merged-repo branch. Which is the first branch that really started representing Lucid OS.

This may change in the future depending on design decisions based on the best method to proceed beyond merged-repo.

It has been discussed among the development members that we use staging, testing and stable repositories in which this documentation will be updated to reflect which direction we choose to go with.

doc
=====

This is where the documentation resides for our development process. It will most likely be categorized via a directory structure that makes sense.

Other branches with program names.
=====

These branches represent either custom programs created by the development team or programs that have been modified from thier upstream sources for Lucid OS.

What is contained within the repositories?
=====

The repositories used in building Lucid OS contain a directory structure that contains PKGBUILD files and all other files neccessary to compile that PKGBUILD. These directories are never to contain any source code, This is done in other areas of the branching system. The PKGBUILD directories should not need to contain any additional directories. If you think you do need to have a directory in the PKGBUILD directory then you probably need a new branch for source code instead.

What is the directory structure used for the repositories?
=====

The directory structrure is laid out as follows. Within the branch you have a seperate directory for each repository that you intend to compile.

The only repository that is going to be placed within the hard and fast rule of this will probably never change is core, core will always be core in all instances and this just makes sense to me.

In all other cases we can separate the repositories up in a way that makes sense.

In a standard Arch Linux based distribution it makes sense for them to have a limited number of repositories to make it so the user has to make less modifications to the system to get it up and running, There are other reasons why it makes sense for Arch to do things but they are not related to git so I will not be discussing those items here.

For us it makes sense to have multiple smaller repositories. One reason is that the end result our repositories and how they work will be much different than how other Linux Distributions operate. Having git mirror the final repository keeps things simple.

Next up is what each repository contains. Each repository shall contain a directory for every package that in turn contains the PKGBUILD and other required build files. The exception in which a package will not contain a directory for its build is if that package is built within another PKGBUILD.
