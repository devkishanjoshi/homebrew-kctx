class Kctx < Formula
  desc "Kubernetes context switcher CLI written in Python"
  homepage "https://github.com/devkishanjoshi/kctx"
  url "https://github.com/devkishanjoshi/homebrew-kctx/releases/tag/v1.0.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "kctx.py" => "kctx"
  end

  test do
    system "#{bin}/kctx", "--help"
  end
end
