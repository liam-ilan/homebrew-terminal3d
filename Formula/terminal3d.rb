class Terminal3d < Formula
  desc "View 3d models in your terminal"
  homepage "https://github.com/liam-ilan/terminal3d"
  url "https://github.com/liam-ilan/terminal3d/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "0b27f682b2210b53ad3dbf1e39cd40c57fe84da1101ac2de167f6d80bfbf68c2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^0.0.4$/, shell_output("#{bin}/ghloc --version"))
  end
end
