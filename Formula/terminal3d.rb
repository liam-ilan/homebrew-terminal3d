class Terminal3d < Formula
  desc "View 3d models in your terminal"
  homepage "https://github.com/liam-ilan/terminal3d"
  url "https://github.com/liam-ilan/terminal3d/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cb4baddf21bc2c3fa918366a51548175947b0150ac1e587cfb5dad0a5a187c75"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^0.1.0$/, shell_output("#{bin}/t3d --version"))
  end
end
