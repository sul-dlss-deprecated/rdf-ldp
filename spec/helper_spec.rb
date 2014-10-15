require 'spec_helper'
require 'rdf/turtle'

describe RDF::LDP do
  
  let(:anno_ttl) { File.read(fixture_path + '/open_anno_ldp_container.ttl') }
  
  describe '#remove_ldp_triples' do
    it 'graph returned has no ldp triples' do
      graph = RDF::Graph.new
      graph.from_ttl anno_ttl
      expect(graph.count).to eql 39
      result = graph.query [nil, RDF.type, RDF::URI.new("http://www.w3.org/ns/ldp#Container")]
      expect(result.size).to eql 1
      result = graph.query [nil, RDF::URI.new("http://www.w3.org/ns/ldp#contains"), nil]
      expect(result.size).to eql 2
      
      stripped_graph = RDF::LDP.remove_ldp_triples graph
      expect(stripped_graph.count).to eql 29
      result = stripped_graph.query [nil, RDF.type, RDF::URI.new("http://www.w3.org/ns/ldp#Container")]
      expect(result.size).to eql 0
      result = stripped_graph.query [nil, RDF::URI.new("http://www.w3.org/ns/ldp#contains"), nil]
      expect(result.size).to eql 0
    end
  end
  
end