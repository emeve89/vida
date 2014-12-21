# Vida

The Game of Life, also known simply as Life, is a cellular automaton devised by
the British mathematician John Horton Conway in 1970.

## Rules
The universe of the Game of Life is an infinite two-dimensional orthogonal grid of
square cells, each of which is in one of two possible states, alive or dead.
Every cell interacts with its eight neighbours, which are the cells that are
horizontally, vertically, or diagonally adjacent. At each step in time, the
following transitions occur:

1. Any live cell with fewer than two live neighbours dies, as if caused by
under-population.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overcrowding.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by
reproduction.

The initial pattern constitutes the seed of the system. The first generation is
created by applying the above rules simultaneously to every cell in the
seed—births and deaths occur simultaneously, and the discrete moment at which
this happens is sometimes called a tick (in other words, each generation is a
pure function of the preceding one). The rules continue to be applied repeatedly
to create further generations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vida'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vida

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/emeve89/vida/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
