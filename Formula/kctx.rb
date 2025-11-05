class Kctx < Formula
  desc "Kubernetes context switcher CLI written in Python"
  homepage "https://github.com/devkishanjoshi/kctx"
  url "https://github.com/devkishanjoshi/homebrew-kctx/releases/tag/1.0.1"
  sha256 "c2f977411fe8db109e8dd3f335607ed8ac26209aef07b7636374664550984cd8"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "kctx.py" => "kctx"
  end

  test do
    system "#{bin}/kctx", "--help"
  end
end
