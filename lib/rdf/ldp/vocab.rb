# -*- encoding: utf-8 -*-
# This file generated automatically using vocab-fetch from http://www.w3.org/ns/ldp#
require 'rdf'
module RDF
  # @deprecated:  this class is deprecated in favor of RDF::Vocab::LDP
  #   from rdf-vocab gem
  class LDP < RDF::StrictVocabulary("http://www.w3.org/ns/ldp#")

    # Class definitions
    term :BasicContainer,
      comment: %(An LDPC that uses a predefined predicate to simply link to its contained resources.).freeze,
      label: "BasicContainer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      subClassOf: "http://www.w3.org/ns/ldp#Container".freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze
    term :Container,
      comment: %(A Linked Data Platform RDF Source \(LDP-RS\) that also conforms to additional patterns and conventions for managing membership. Readers should refer to the specification defining this ontology for the list of behaviors associated with it.).freeze,
      label: "Container".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      subClassOf: "http://www.w3.org/ns/ldp#RDFSource".freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze
    term :DirectContainer,
      comment: %(An LDPC that has the flexibility of choosing what form the membership triples take.).freeze,
      label: "DirectContainer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      subClassOf: "http://www.w3.org/ns/ldp#Container".freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze
    term :IndirectContainer,
      comment: %(An LDPC that is similar to a LDP-DC but it allows an indirection with the ability to list as member a resource, such as a URI representing a real-world object, that is different from the resource that is created).freeze,
      label: "IndirectContainer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      subClassOf: "http://www.w3.org/ns/ldp#Container".freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze
    term :NonRDFSource,
      comment: %(A Linked Data Platform Resource \(LDPR\) whose state is NOT represented as RDF.).freeze,
      label: "NonRDFSource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      subClassOf: "http://www.w3.org/ns/ldp#Resource".freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze
    term :RDFSource,
      comment: %(A Linked Data Platform Resource \(LDPR\) whose state is represented as RDF.).freeze,
      label: "RDFSource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      subClassOf: "http://www.w3.org/ns/ldp#Resource".freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze
    term :Resource,
      comment: %(A HTTP-addressable resource whose lifecycle is managed by a LDP server.).freeze,
      label: "Resource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdfs:Class".freeze,
      "vs:term_status" => %(unstable).freeze

    # Property definitions
    property :contains,
      comment: %(Links a container with resources created through the container.).freeze,
      domain: "http://www.w3.org/ns/ldp#Container".freeze,
      label: "contains".freeze,
      range: "rdfs:Resource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(unstable).freeze
    property :hasMemberRelation,
      comment: %(Indicates which predicate is used in membership triples, and that the membership triple pattern is < membership-constant-URI , object-of-hasMemberRelation, member-URI >.).freeze,
      domain: "http://www.w3.org/ns/ldp#Container".freeze,
      label: "hasMemberRelation".freeze,
      range: "rdf:Property".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(unstable).freeze
    property :insertedContentRelation,
      comment: %(Indicates which triple in a creation request should be used as the member-URI value in the membership triple added when the creation request is successful.).freeze,
      domain: "http://www.w3.org/ns/ldp#Container".freeze,
      label: "insertedContentRelation".freeze,
      range: "rdf:Property".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(unstable).freeze
    property :isMemberOfRelation,
      comment: %(Indicates which predicate is used in membership triples, and that the membership triple pattern is < member-URI , object-of-isMemberOfRelation, membership-constant-URI >.).freeze,
      domain: "http://www.w3.org/ns/ldp#Container".freeze,
      label: "isMemmberOfRelation".freeze,
      range: "rdf:Property".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(unstable).freeze
    property :member,
      comment: %(LDP servers should use this predicate as the membership predicate if there is no obvious predicate from an application vocabulary to use.).freeze,
      domain: "http://www.w3.org/ns/ldp#Resource".freeze,
      label: "member".freeze,
      range: "rdfs:Resource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(unstable).freeze
    property :membershipResource,
      comment: %(Indicates the membership-constant-URI in a membership triple.  Depending upon the membership triple pattern a container uses, as indicated by the presence of ldp:hasMemberRelation or ldp:isMemberOfRelation, the membership-constant-URI might occupy either the subject or object position in membership triples.).freeze,
      domain: "http://www.w3.org/ns/ldp#Container".freeze,
      label: "membershipResource".freeze,
      range: "rdf:Property".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(unstable).freeze

    # Extra definitions
    term :"",
      comment: %(This ontology provides an informal representation of the concepts and terms as defined in the LDP specification.  Consult the LDP specification for normative reference.).freeze,
      "dc:description" => %(All vocabulary URIs defined in the Linked Data Platform \(LDP\) namespace.).freeze,
      "dc:title" => %(The W3C Linked Data Platform \(LDP\) Vocabulary).freeze,
      label: "W3C Linked Data Platform (LDP)".freeze,
      "rdfs:seeAlso" => [%(http://www.w3.org/2012/ldp).freeze, %(http://www.w3.org/TR/ldp-ucr/).freeze, %(http://www.w3.org/TR/ldp/).freeze, %(http://www.w3.org/2011/09/LinkedData/).freeze],
      type: "owl:Ontology".freeze
    term :MemberSubject,
      comment: %(Used to indicate default and typical behavior for ldp:insertedContentRelation, where the member-URI value in the membership triple added when a creation request is successful is the URI assigned to the newly created resource.).freeze,
      label: "MemberSubject".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Description".freeze,
      "vs:term_status" => %(unstable).freeze
    term :PreferContainment,
      comment: %(URI identifying a LDPC's containment triples, for example to allow clients to express interest in receiving them.).freeze,
      label: "PreferContainment".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Description".freeze,
      "vs:term_status" => %(unstable).freeze
    term :PreferEmptyContainer,
      comment: %(URI identifying the subset of a LDPC's triples present in an empty LDPC, for example to allow clients to express interest in receiving them.  Currently this excludes containment and membership triples, but in the future other exclusions might be added.  This definition is written to automatically exclude those new classes of triples.).freeze,
      label: "PreferEmptyContainer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Description".freeze,
      "vs:term_status" => %(unstable).freeze
    term :PreferMembership,
      comment: %(URI identifying a LDPC's membership triples, for example to allow clients to express interest in receiving them.).freeze,
      label: "PreferMembership".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/ldp#).freeze,
      type: "rdf:Description".freeze,
      "vs:term_status" => %(unstable).freeze
  end
end
