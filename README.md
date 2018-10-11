[elm-pipeline]: https://package.elm-lang.org/packages/elm-lang/core/latest/Basics#(|%3E)
[haskel-pipeline]: https://wiki.haskell.org/$
[license]: https://opensource.org/licenses/BSD-3-Clause
[mlton]: http://mlton.org/
[smackage]: http://www.elsman.com/lessons/2014/10/02/getting-started-with-smackage
[unittestml]: https://bitbucket.org/cacilhas/unittestml

# Function Pipelines support

This lib provides function pipelines like you can find
in [Elm][elm-pipeline] and [Haskel][haskel-pipeline].

Depends on [MLton][mlton].

## Installing

Install [Smackage][smackage] and run:

```sh
smackage source pipelines git https://bitbucket.org/cacilhas/pipelines.git
smackage refresh
smackage get pipelines
```

## Usage

In your MLBasis add the entry:

```sml
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

## Testing

Install [UnitTestML][unittestml] and run:

```sh
mlton tests/test.mlb
./tests/test
```

## License

[The 3-Clause BSD License][license]

```
Copyright 2018 Rodrigo Cacilhas <batalema@cacilhas.info>

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
