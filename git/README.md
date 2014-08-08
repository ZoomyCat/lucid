Lucid Documentation
=====

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
