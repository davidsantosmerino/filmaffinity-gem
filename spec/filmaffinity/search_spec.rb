require_relative "../spec_helper"
require_relative "matchers/include-movie"


describe "FilmAffinity::Search" do

  describe "#create_document_html" do
    subject(:search) { FilmAffinity::Search.new("truman") }

    it "#create_document_html" do
      document_html = search.create_document_html
      expect(document_html).to be_an(Nokogiri::HTML::Document)
    end

  end

  describe "#parse_movie" do
    it "should parse id" do
      id = "504889"
      expect(id).to eq(search.parse_movie.id)
    end

    it "should parse title" do
      title = "El show de Truman (Una vida en directo)  (1998)"
      expect(title).to eq(search.parse_movie.title)
    end
    
  end
end
