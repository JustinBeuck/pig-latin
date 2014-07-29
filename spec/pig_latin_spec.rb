require_relative '../lib/pig_latin.rb'


describe "Testing pig latin translator" do

before(:all) do
    @word1 = 'glove'
    @word2 = 'egg'
    @word3 = 'yellow'
    @word4 ='rhythm'
    @number = 22
  end
	
  it "converts a word that begins with consonant" do
    expect(PigLatin.translate(@word1)).to eq 'oveglay'
  end

  it "translate a word that begins with a vowel" do
    expect(PigLatin.translate(@word2)).to eq 'eggway'
  end

  it "translate a word that begins with 'y'" do
    expect(PigLatin.translate(@word3)).to eq 'ellowyay'
  end

  it "translate a word that includes 'y'" do
    expect(PigLatin.translate(@word4)).to eq 'ythmrhay'
  end

  it "returns error if integer is passed" do
    expect(PigLatin.translate(@number.to_s)).to eq 'error!'
  end
end
