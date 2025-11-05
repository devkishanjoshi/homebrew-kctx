class Kctx < Formula
  desc "Kubernetes context switcher CLI written in Python"
  homepage "https://github.com/devkishanjoshi/kctx"
  url "https://github.com/devkishanjoshi/homebrew-kctx/archive/refs/tags/1.0.1.tar.gz"
  sha256 "45c85c5d37f00df6e4f3d94f91ca996a8d89d482e12e7e34992c1326e6094731"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "kctx/main.py" => "kctx"
  end

  test do
    system "#{bin}/kctx", "--help"
  end
end
