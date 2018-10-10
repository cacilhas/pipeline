[eml-pipeline]: https://package.elm-lang.org/packages/elm-lang/core/latest/Basics#(|%3E)
[haskel-pipeline]: https://wiki.haskell.org/$
[smackage]: http://www.elsman.com/lessons/2014/10/02/getting-started-with-smackage

# Function Pipelines support

This lib provides function pipelines like you can find in [Elm][elm-pipeline]
and [Haskel][haskel-pipeline].

## Installing

Install [Smackage][smackage] and run:

```sh
smackage source pipelines git https://cacilhas@bitbucket.org/cacilhas/pipelines.git
smackage refresh
smackage get pipelines
```

## Usage

In your MLBasis add the entry:

```
$(SMACKAGE)/pipelines/v1/pipelines.mlb
```

## Examples

### `|>` example

Instead of:

```sml
a (b c (d e))
```

You can use:

```sml
d e |> b c |> a
```

### `$` example

Instead of:

```sml
a b (c d)
```

You can write:

```sml
a b $ c d
```
