class Kctx < Formula
  desc "Kubernetes context switcher CLI written in Python"
  homepage "https://github.com/devkishanjoshi/kctx"
  url "https://github.com/devkishanjoshi/homebrew-kctx/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "kctx.py" => "kctx"
  end

  test do
    system "#{bin}/kctx", "--help"
  end
end
