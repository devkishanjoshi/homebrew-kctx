class Kctx < Formula
  desc "Kubernetes context switcher CLI written in Python"
  homepage "https://github.com/devkishanjoshi/kctx"
  url "https://github.com/devkishanjoshi/homebrew-kctx/releases/tag/v1.0.0"
  sha256 "e324b412ac4f4bd78ae1eae72d955b2858a0dfbf5421e577234e1b43cbaaf8e0"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "kctx.py" => "kctx"
  end

  test do
    system "#{bin}/kctx", "--help"
  end
end
