require 'deprecation'

# mixin methods
module RDF
  class LDPDeprecated < RDF::StrictVocabulary("http://www.w3.org/ns/ldp")
    extend Deprecation

    # @deprecated
    # returns graph without any LDP-specific triples
    def self.remove_ldp_triples graph
      Deprecation.warn RDF::LDP, "RDF::LDP.remove_ldp_triples is deprecated.  See oa_graph_helper in triannon gem."
      if graph && graph.is_a?(RDF::Graph) && graph.count > 0
        no_ldp_graph = RDF::Graph.new
        ldp_props = RDF::LDP.properties.map {|p| p.to_s}
        graph.each { |stmt|
          no_ldp_graph << stmt unless ldp_props.include?(stmt.predicate.to_s) ||
                                      ldp_props.include?(stmt.object.to_s) ||
                                      ldp_props.include?(stmt.subject.to_s)
        }
        no_ldp_graph
      else
        graph
      end
    end

  end
end
