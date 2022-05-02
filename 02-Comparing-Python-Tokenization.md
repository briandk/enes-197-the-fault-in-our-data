# Comparing Tokenization in Pygments and Pandoc

Here's some example Python code:


```python
from plotnine import geom_text
def myFunction(x: str):
    pass
```

And here, to the best of my ability, is how Pygments tokenizes that code vs. how Pandoc does it. Note that Pygments seems to recognize and apply token types that pandoc does not (for example, Pygments recognizes punctuation (p) in the above code where pandoc does not. Note also that pandoc may assign token types for which there is no added style. These two behaviors mean:

-   Unstyled code might still be semantically tokenized, but

-   Untokenized code cannot and will not be styled

## How the Code Gets Tokenized

| Token        | *Pygments* Token Type[^comparing-python-tokenization-1] | *Pandoc* Token Type[^comparing-python-tokenization-2] |
|--------------|---------------------------------------------------------|-------------------------------------------------------|
| `from`       | **kn** (Keyword.Namespace)                              | **im** (ImportTok)                                    |
| `plotnine`   | **nn** (Name.Namespace)                                 | [no token type]                                       |
| `import`     | **kn** (Keyword.Namespace)                              | **im** (ImportTok)                                    |
| `geom_text`  | **n** (Name)                                            | [no token type]                                       |
| ---          | ---                                                     | ---                                                   |
| `def`        | **k** (Keyword)                                         | **kw** (KeywordTok)                                   |
| `myFunction` | **nf** (Name.Function)                                  | [no token type]                                       |
| `(`          | **p** (Punctuation)                                     | [no token type]                                       |
| `x`          | **n** (Name)                                            | [no token type]                                       |
| `:`          | **p** (Punctuation)                                     | [no token type]                                       |
| `str`        | **nb** (Name.Builtin)                                   | **bu** (BuiltInTok)                                   |
| `):`         | **p** (Punctuation)                                     | [no token type]                                       |
| `pass`       | **k** (Keyword)                                         | **cf** (ControlFlowTok)                               |
|              |                                                         |                                                       |

: Comparing how Python code gets tokenized in Pygments vs. Pandoc

[^comparing-python-tokenization-1]: Pygments token types are taken from: <https://github.com/pygments/pygments/blob/ab4afd821aa41403f7a0b1e714112c40b2ad843b/pygments/styles/tango.py#L44-L140>

[^comparing-python-tokenization-2]: Pandoc token types are taken from: <https://github.com/jgm/skylighting/blob/5ccee442dff7eb00423e807f59e24f2a0082bcaa/skylighting-core/src/Skylighting/Styles.hs#L109-L146>

## Seeing what syntax-coloring looks like with a default snippet from Pygments


```python
from typing import Iterator

# This is an example
class Math:
    @staticmethod
    def fib(n: int) -> Iterator[int]:
        """ Fibonacci series up to n """
        a, b = 0, 1
        while a < n:
            yield a
            a, b = b, a + b

result = sum(Math.fib(42))
print("The answer is {}".format(result))
#> The answer is 88
```

