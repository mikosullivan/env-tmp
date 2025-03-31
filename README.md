# env-temp
Ruby module for temporarily changing `ENV`.

## Installation

The usual:

~~~
gem install env-tmp
~~~

## Use

`env-tmp` is a small module with one simple feature. Run `ENV.tmp` and pass
a block. Inside the block, change `ENV` however you want. After the block,
`ENV` will be back to its previous state.

~~~
ENV['foo'] = 'bar' #=> bar

ENV.tmp do
  ENV['foo'] = 'whatever' #=> whatever
end

ENV['foo'] #=> bar
~~~

## License

`env-tmp` is released under the MIT open source license.

## Author

Mike O'Sullivavn, mike@idocs.com

## Homepage

https://github.com/mikosullivan/env-tmp
