# SayItWithGraphs [![Build Status](https://travis-ci.org/nesQuick/say-it-with-graphs.svg?branch=master)](https://travis-ci.org/nesQuick/say-it-with-graphs)

Use [Librato Metrics](https://www.librato.com) to finally say something which should have been said long before.

![](http://cl.ly/image/1F3B371E3r0v/2015-03-09%2000_57_07.gif)

**Note: not all characters are supported yet, please feel free to contribute some. check `lib/say_it_with_graphs/characters` for available characters.**

## Installation

Install it yourself as:

```bash
$ gem install say_it_with_graphs
```

Or add this line to your application's Gemfile:

```ruby
gem 'say_it_with_graphs'
```

And then execute:

```bash
$ bundle
```

### Configure

You need `LIBRATO_USER` and `LIBRATO_TOKEN` in your environment in order to make it work :sparkles:

You can find your tokens here: https://metrics.librato.com/account/api_tokens or simply create a new one.

## Quick Start

Getting started in 5 minutes.

```bash
$ gem 'say_it_with_graphs'
$ export LIBRATO_USER='<your user email here>'
$ export LIBRATO_TOKEN='<your api token here>'
$ say-it-with-graphs "I <3 GRAPHS\!"
"making 'I <3 GRAPHS!' with <3 and graphs"
"Painting to say-it-with-graphs-82 ... ETA: 29 minutes"
"=> https://metrics.librato.com/metrics/say-it-with-graphs-82"
"Frame 0 of 29"
"Line[9f9845] pos: 0"
"Line[9f9845] pos: 100"
"Line[9f9845] pos: 0"
"Frame 1 of 29"
"Frame 2 of 29"
"Line[27018a] pos: 50"
"Line[db03f4] pos: 50"
...........
```

`say-it-with-graphs` will paint your sentence onto a graph. you can find the url in the output.

## Usage

The usage of the execuatable is described at [Quick Start](#Quick-Start). In this section we will discuss the API to create your own characters in `lib/say_it_with_graphs/characters`.

### The frame

Every frame has access to unlimited amount of lines. The most characters can be drawn with 2 or 3. Every character has to respond to two methods:

1. `define`
Defines returns the character which will be mathed against the user input.

```ruby
def define
  'i'
end
```

2. `draw`
Draw does the actual magic. When you have the `SayItWithGraphs::GraphControls` included in your class, you can just call the `frame` method and pass it a block which gets a `frame` passed to it. As mentioned above the frame has access to a unlimited number of lines, you can access them in several ways, the easiest is `f.line` which gives back a `Line` object, you can set it's source with `[]` (defaults to 0).

```ruby
def draw
  frame do |f|
    f.line.at 0
    f.line.at 100
    f.line.at 0
  end
end
```

With this methods given, only graphs with a limited number of lines would be possible. It's hard to draw the characters with a single line (one could try implementing cursive handwriting). You have also access to a helper method called `rnd_line` which gives a key one can use to refer to a line which will not be used at other places in the drawning.

```ruby
def define
  'l'
end

def draw
  a = rnd_line
  frame do |f|
    f.line[a].at 100
    f.line[a].at 0
  end
  frame do |f|
    f.line[a].at 0
  end
  frame do |f|
    f.line[a].at 0
  end
end
```

You can check out more complex examples like `lib/say_it_with_graphs/characters/r.rb` to see what's possible.

## Disclaimer

This is a weekend hack. There are a few ways this thing could be improved.

## Contributing

1. Fork it ( https://github.com/nesQuick/say_it_with_graphs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
