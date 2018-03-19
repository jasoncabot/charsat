# CharsAt

A tool to read characters from stdin using 1-based indexing.

I use this for printing n characters from long, complex passwords for certain (banking) sites that require it

For example:

* Open password manager
* Copy complex password to clipboard
* Pipe clipboard content into this tool

## Installation

```sh
gem install charsat
```

## Usage

```sh
charsat 1 2 3 # Will prompt for a string and then print the 1st, 2nd and 3rd character
```

```sh
echo 'hello world' | charsat 1 7 # Prints h, w
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
