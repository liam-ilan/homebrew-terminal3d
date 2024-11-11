class Terminal3d < Formula
  desc "View 3d models in your terminal"
  homepage "https://github.com/liam-ilan/terminal3d"
  url "https://github.com/liam-ilan/terminal3d/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "e932b9033c8173265135ebcf4a35c1e680737079e7db7ec85c71e433b3cd2170"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
