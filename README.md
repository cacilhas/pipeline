[eml-pipeline]: https://package.elm-lang.org/packages/elm-lang/core/latest/Basics#(|%3E)
[haskel-pipeline]: https://wiki.haskell.org/$

# Function Pipelines support

This lib provides function pipelines like you can find in [Elm][elm-pipeline]
and [Haskel][haskel-pipeline].

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
