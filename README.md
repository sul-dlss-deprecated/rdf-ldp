# DEPRECATED - use rdf-vocab

This gem is deprecated;  rdf-vocab gem (https://github.com/ruby-rdf/rdf-vocab, included in the linkeddata gem) now contains RDF::Vocab::LDP.  You can find the  helper method to strip LDP triples from an RDF::Graph object in the triannon gem in lib/oa_graph_helper.rb.

# rdf-ldp

[![Build Status](https://travis-ci.org/sul-dlss/rdf-ldp.svg)](https://travis-ci.org/sul-dlss/rdf-ldp) [![Dependency Status](https://gemnasium.com/sul-dlss/rdf-ldp.svg)](https://gemnasium.com/sul-dlss/rdf-ldp) [![Gem Version](https://badge.fury.io/rb/rdf-ldp.svg)](http://badge.fury.io/rb/rdf-ldp)

Contains vocabularies to be used by RDF ruby gem https://github.com/ruby-rdf/rdf/ to simplify coding when using LDP data.

Also contains helper method to strip LDP triples from an RDF::Graph object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rdf-vocab'  # (was rdf-ldp)
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdf-vocab  # (was rdf-ldp)

## Usage

    require 'rdf/vocab'

    RDF::Vocab::LDP.member    #=> RDF::URI("http://www.w3.org/ns/ldp#member")

# DEPRECATED - use rdf-vocab

This gem is deprecated;  rdf-vocab gem (https://github.com/ruby-rdf/rdf-vocab, included in the linkeddata gem) now contains RDF::Vocab::LDP.  You can find the  helper method to strip LDP triples from an RDF::Graph object in the triannon gem in lib/oa_graph_helper.rb.
