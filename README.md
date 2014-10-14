# rdf-ldp

[![Build Status](https://travis-ci.org/sul-dlss/rdf-ldp.svg)](https://travis-ci.org/sul-dlss/rdf-ldp) [![Dependency Status](https://gemnasium.com/sul-dlss/rdf-ldp.svg)](https://gemnasium.com/sul-dlss/rdf-ldp) [![Gem Version](https://badge.fury.io/rb/rdf-ldp.svg)](http://badge.fury.io/rb/rdf-ldp)

Contains vocabularies to be used by RDF ruby gem https://github.com/ruby-rdf/rdf/ to simplify coding when using LDP data.

Also contains helper method to strip LDP triples from an RDF::Graph object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rdf-ldp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdf-ldp

## Usage

    include rdf
    include rdf/ldp
    
    RDF::LDP.member    #=> RDF::URI("http://www.w3.org/ns/ldp#member")

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rdf-ldp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
