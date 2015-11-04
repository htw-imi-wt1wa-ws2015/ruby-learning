# 31th October 2015
# Ramin, Oliver
# Source: http://ruby-doc.org/core-2.2.0/Regexp.html

describe "A Ruby Regular-Expressions" do

  it "can return the index of first match" do
    expect(/a/ =~ 'haystack').to eq 1
  end

  it "can return MatchData object" do
   expect(/st/.match('haystack').is_a?(MatchData)) == true
  end

  it "can return a MatchData Object from String" do
   expect(/st/.match('haystack')).to_s.eql? 'st'
  end

  it "can list characters that may appear" do
   expect(/W[aeiou]rd/.match('Word')).to_s.eql? 'Word'
  end

  it "can match a vowel followed by 2 word characters" do
   expect(/[aeiou]\w{2}/.match("Caenorhabditis elegans")).to_s.eql? 'aen'
  end

  #TODO

end
