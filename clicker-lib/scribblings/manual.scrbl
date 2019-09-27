#lang scribble/manual
@require[@for-label[color-strings]
        scribble/extract]

@title{clicker-lib}
@author{thoughtstem}

@defmodule[clicker-lib]

A library for making Ratchet-based clicker games.

Reprovides common colors from @racket[color-strings] package -- @racket[red], @racket[green], @racket[blue], @racket[yellow], @racket[orange], and @racket[purple].

Also reprovides @racket[play-icon] from @racket[common-icons].

@defmodule[clicker-lib/start]

Provides a generic start function for other healer games to build upon. 

@defform[(start avatar (food ...) (friends ...) (enemies ...))]{
  The basic starter for a healing game.  It is a macro because we want people to type:

  @codeblock{
    (start cat (dog apple))
  }

  ... not:

  @codeblock{
    (start cat (list dog apple))
  }

  So we capture the user's code, package the parameters into lists and call whatever function has been "bound" with @racket[bind-start-to].  This allows different variations on the healing game to be congifured by defining a function (e.g. @racket[my-start]) and binding it:

  @codeblock{
    (bind-start-to my-function)
  }

  The function should be one that takes between 0 and 4 parameters.  In most cases, it will directly call @racket[generic-start], which does the heavy lifting for the game. 
}

