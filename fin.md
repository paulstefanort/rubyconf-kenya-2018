# Reflection in Ruby: RubyConf Kenya 2018

[Paul Stefan Ort](https://www.pso.io), <https://www.twitter.com/PaulStefanOrt>

[Def Method](https://www.defmethod.com), [Dependable](https://www.dependable.io)

## Recap
- Detecting available classes and methods
- Detecting direct changes to methods
- Detecting indirect changes to methods

## Use Cases
- find changes across gem versions
  - [example: Rails 5.0.5 -> Rails 5.1.0](https://gist.github.com/paulstefanort/98af379e9d6e29f9a5e58ec28e03184d)
- identify potentially conflicting monkeypatches
- generate test cases dynamically

## Further Resources

- [The Well-Grounded Rubyist by Joe Leo & David A. Black](https://www.manning.com/books/the-well-grounded-rubyist-third-edition)
- [Metaprogramming Ruby 2 by Paolo Perrotta](https://pragprog.com/book/ppmetr2/metaprogramming-ruby-2)
- Talks
  - Jim Weirich
    - [RubyConf 2012: Y Not - Adventures in Functional Programming](https://www.youtube.com/watch?v=FITJMJjASUs)
    - [RubyConf Uruguay 2013: Why aren’t you using Ruby?](https://www.youtube.com/watch?v=0D3KfnbTdWw)
  - Ryan Davis
    - [Mountain West Ruby 2016: Writing a Test Framework from Scratch](https://www.youtube.com/watch?v=56ZB3XBjMxc)
  - Sam Phippen
    - [RubyConf 2015: Extremely Defensive Coding](https://www.youtube.com/watch?v=44VFrNs7JTU)
