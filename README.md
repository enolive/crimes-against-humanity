# crimes-against-humanity

Me trying to be funny and write some cryptic shit in Haskell.
There is nothing here beside the usual stack project
and a function written in a very point-free way.

Basically it abuses the fact that functions are instances
of Functors and Monads in Haskell (the so-called reader functor/monad). 
There is a very nice explanation what's going on
[here](https://eli.thegreenplace.net/2018/haskell-functions-as-functors-applicatives-and-monads/).

Hey, if the nice Haskell folks put up some definitions in the core library
such as

```haskell
instance Functor ((->) r)
instance Monad ((->) r)
```

why not abuse it?

In case you are wondering about the weird commit messages, they were
generated using [whatthecommit.com's generator](www.whatthecommit.com) and this
nice git alias:

```
[alias]
    yolo = !git commit -m \"$(curl -s http://whatthecommit.com/index.txt)\"
```

## Usage

### Run Tests

```bash
stack test
```
