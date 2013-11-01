require "spec_helper"
describe "bundle cache with hg" do
  it "base_name should strip private repo uris" do
    source  = Bundler::Source::Mercurial.new("uri" => "ssh://hg@bitbucket.org/nolith/eusplazio")
    expect(source.send(:base_name)).to eq("eusplazio")
  end
end
