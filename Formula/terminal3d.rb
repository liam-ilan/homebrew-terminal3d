class Terminal3d < Formula
  desc "View 3d models in your terminal"
  homepage "https://github.com/liam-ilan/terminal3d"
  url "https://github.com/liam-ilan/terminal3d/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "2f8f50a40fd3f454a5c640cbb8dd6610aa51c37629cc2f9e52a950aa9db8c5f0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match /^0.0.3$/, shell_output("#{bin}/ghloc --version")
  end
end
